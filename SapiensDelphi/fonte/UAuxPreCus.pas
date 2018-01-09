unit UAuxPreCus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  TFAuxPreCus = class(TForm)
    EdPreCus: TCurrencyEdit;
    LCodPro: TLabel;
    LDesPro: TLabel;
    LDesDer: TLabel;
    BProcessa: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BProcessaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAuxPreCus: TFAuxPreCus;

implementation

uses UAtualizaPreCus, UDm1, UPrincipal;

{$R *.dfm}

procedure TFAuxPreCus.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAuxPreCus.BProcessaClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma Atualização', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
      begin//1
        if EdPreCus.Text <> '' then
        begin
          FAtualizaPreCus.CadE075Der.Close;
          FAtualizaPreCus.CadE075Der.Parameters.ParamByName('codemp').Value := dm1.ConsProdSemCusCODEMP.Value;
          FAtualizaPreCus.CadE075Der.Parameters.ParamByName('codpro').Value := dm1.ConsProdSemCusCODPRO.Value;
          FAtualizaPreCus.CadE075Der.Parameters.ParamByName('codder').Value := dm1.ConsProdSemCusCODDER.Value;
          FAtualizaPreCus.CadE075Der.Open;
          FAtualizaPreCus.CadE075Der.Edit;
          FAtualizaPreCus.CadE075DerPRECUS.Value := StrToFloat(EdPreCus.Text);
          FAtualizaPreCus.CadE075Der.Post;

          dm1.ConsProdSemCus.Close;
          dm1.ConsProdSemCus.SQL.Clear;
          dm1.ConsProdSemCus.SQL.Add('select e075pro.despro, e075der.* from e075der');
          dm1.ConsProdSemCus.SQL.Add('inner join e075pro on e075pro.codemp = e075der.codemp and');
          dm1.ConsProdSemCus.SQL.Add('e075pro.codpro = e075der.codpro');
          dm1.ConsProdSemCus.SQL.Add('where');
          dm1.ConsProdSemCus.SQL.Add('e075pro.tippro = ''P'' and');
          dm1.ConsProdSemCus.SQL.Add('e075der.precus = 1');
          dm1.ConsProdSemCus.SQL.Add('order by e075pro.despro');
          dm1.ConsProdSemCus.Open;

          Close;
        end;
      end;//1
end;

procedure TFAuxPreCus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FPrincipal.ApagaTela(FAuxPreCus.Name,FPrincipal.vnCodCon);
end;

procedure TFAuxPreCus.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FAuxPreCus.Name,FPrincipal.vnCodCon);
end;

end.
