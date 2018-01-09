unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, DateUtils, ExtCtrls;

type
  TFPrincipal = class(TForm)
    edtArquivo: TEdit;
    Label1: TLabel;
    edtCartao: TEdit;
    Label2: TLabel;
    chk7: TCheckBox;
    chk11: TCheckBox;
    chk13: TCheckBox;
    chk17: TCheckBox;
    chk18: TCheckBox;
    btnProcessar: TBitBtn;
    btn1: TSpeedButton;
    dlgOpen: TOpenDialog;
    Label3: TLabel;
    edtData: TDateEdit;
    chk8: TCheckBox;
    chk9: TCheckBox;
    chk12: TCheckBox;
    Label4: TLabel;
    edtHoraLivre: TMaskEdit;
    rg1: TRadioGroup;
    rbEntrada: TRadioButton;
    rbSaida: TRadioButton;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

procedure TFPrincipal.btn1Click(Sender: TObject);
begin
  if dlgOpen.Execute then
     begin
       edtArquivo.Text := dlgOpen.FileName;
     end;

end;

procedure TFPrincipal.btnProcessarClick(Sender: TObject);
var arq: TextFile;
    vaDia,vaMes,vaAno : string;

begin
  if edtData.Date = 0 then
     begin
       Application.MessageBox('Informe a Data','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtData;
       Abort;
     end;

  if edtCartao.Text = '' then
     begin
       Application.MessageBox('Informe o Cart�o','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtCartao;
       Abort;
     end;

  if Length(edtCartao.Text) <> 5 then
     begin
       Application.MessageBox('O n�mero do cart�o est� fora do padr�o de 5 d�gitos','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtCartao;
       Abort;
     end;

  if not FileExists(edtArquivo.Text) then
     begin
       Application.MessageBox('Arquivo n�o encontrado','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtArquivo;
       Abort;
     end;

   if (edtHoraLivre.Text <> '  :  ') and (rbEntrada.Checked = false) and (rbSaida.Checked = false) then
      begin
        Application.MessageBox('Informe se o hor�rio livre � sa�da ou entrada','Aviso',MB_ICONWARNING+MB_OK);
        Abort;
      end;
  vaDia := Copy(edtData.Text,0,2);
  vaMes := Copy(edtData.Text,4,2);
  vaAno := Copy(edtData.Text,9,2);

     AssignFile(arq,edtArquivo.Text);
     Append(arq);
     // Reset(arq);
    // Rewrite(arq); //abre o arquivo para escrita

     if chk7.Checked then
        begin
          Writeln(arq,'010 '+vaDia+'/'+vaMes+'/'+vaAno+' 06:59 '+edtCartao.Text+' 01');
        end;

     if chk8.Checked then
        begin
          Writeln(arq,'010 '+vaDia+'/'+vaMes+'/'+vaAno+' 07:59 '+edtCartao.Text+' 01');
        end;

     if chk9.Checked then
        begin
          Writeln(arq,'011 '+vaDia+'/'+vaMes+'/'+vaAno+' 09:31 '+edtCartao.Text+' 01');
        end;

     if chk11.Checked then
        begin
          Writeln(arq,'011 '+vaDia+'/'+vaMes+'/'+vaAno+' 11:31 '+edtCartao.Text+' 01');
        end;

     if chk12.Checked then
        begin
          Writeln(arq,'011 '+vaDia+'/'+vaMes+'/'+vaAno+' 12:01 '+edtCartao.Text+' 01');
        end;

     if chk13.Checked then
        begin
          Writeln(arq,'010 '+vaDia+'/'+vaMes+'/'+vaAno+' 12:59 '+edtCartao.Text+' 01');
        end;

     if chk17.Checked then
        begin
          Writeln(arq,'011 '+vaDia+'/'+vaMes+'/'+vaAno+' 17:20 '+edtCartao.Text+' 01');
        end;

     if chk18.Checked then
        begin
          Writeln(arq,'011 '+vaDia+'/'+vaMes+'/'+vaAno+' 18:02 '+edtCartao.Text+' 01');
        end;


    if edtHoraLivre.Text <> '  :  ' then
       begin
         if rbEntrada.Checked then
            begin
              Writeln(arq,'010 '+vaDia+'/'+vaMes+'/'+vaAno+' '+edtHoraLivre.Text+' '+edtCartao.Text+' 01');
            end
         else
         if rbSaida.Checked then
            begin
              Writeln(arq,'011 '+vaDia+'/'+vaMes+'/'+vaAno+' '+edtHoraLivre.Text+' '+edtCartao.Text+' 01');
            end;
       end;


     Closefile(arq); //fecha o handle de arquivo

     Application.MessageBox('Item Processado','Confirma��o',MB_ICONINFORMATION+MB_OK);

end;

procedure TFPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
edtData.Date := Date;
end;

end.
