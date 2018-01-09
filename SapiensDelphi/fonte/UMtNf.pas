unit UMtNf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, RbDrawCore, RbButton, Buttons;

type
  TFMtNf = class(TForm)
    DsMtNf: TDataSource;
    Label2: TLabel;
    DBEDescricao: TDBEdit;
    Label3: TLabel;
    DBECdFornecedor: TDBEdit;
    EdDsFornecedor: TEdit;
    Label1: TLabel;
    DBECdMtPrima: TDBEdit;
    EdDsMtPrima: TEdit;
    Label4: TLabel;
    DBEVlMin: TDBEdit;
    Label5: TLabel;
    DBEVlMax: TDBEdit;
    BConfirma: TRbButton;
    BCancela: TRbButton;
    Label6: TLabel;
    DBESubTributaria: TDBEdit;
    SpeedButton1: TSpeedButton;
    EdDsSubTributaria: TEdit;
    Label7: TLabel;
    DBEClassFiscal: TDBEdit;
    Label8: TLabel;
    DBEIpi: TDBEdit;
    Label9: TLabel;
    DBEIcms: TDBEdit;
    procedure BConfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBESubTributariaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMtNf: TFMtNf;

implementation

uses UDataModule4, UDataModule1, UDataModule3, UConsSimpSitTribu;

{$R *.dfm}

procedure TFMtNf.BConfirmaClick(Sender: TObject);
begin
  if DBEDescricao.Text = '' then
        begin
          MessageDlg('Campo Descrição é obrigatório.',mtWarning,[mbok],0);
          DBEDescricao.SetFocus;
        end
      else
        if DBEVlMin.Text = '' then
          begin
          MessageDlg('Campo Valor Mínimo é obrigatório.',mtWarning,[mbok],0);
          DBEVlMin.SetFocus;
          end
        else
          if DBEVlMax.Text = '' then
            begin
            MessageDlg('Campo Valor Máximo é obrigatório.',mtWarning,[mbok],0);
            DBEVlMax.SetFocus;
          end
        else
          begin
           BConfirma.ModalResult := mrOk;
           Click;

          end;
    end;
procedure TFMtNf.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFMtNf.DBESubTributariaExit(Sender: TObject);
begin

       if DBESubTributaria.Text <> '' then
       begin
        DataModule3.IBQConsSitTribu.Close;
        DataModule3.IBQConsSitTribu.SQL.Clear;
        DataModule3.IBQConsSitTribu.SQL.Add('select * from SITU_TRIBUTARIA');
        DataModule3.IBQConsSitTribu.SQL.Add('where cd_situacao = :psituacao');
        DataModule3.IBQConsSitTribu.ParamByName('psituacao').AsInteger := StrToInt(DBESubTributaria.Text);
        DataModule3.IBQConsSitTribu.Open;
        if DataModule3.IBQConsSitTribu.IsEmpty then
          begin
            ShowMessage('Não existe situação tributária cadastrada com este código');
            DBESubTributaria.SetFocus;
            DBESubTributaria.Clear;
          end
          else
            begin
                EdDsSubTributaria.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;
            end;

        end;
end;

procedure TFMtNf.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TFConsSimpSitTribu, FConsSimpSitTribu);
  if FConsSimpSitTribu.ShowModal = mrOk then
    begin
      DataModule1.IBDMatPrimaNfSUB_TRIBUTARIA.AsInteger :=
      DataModule3.IBQConsSitTribuCD_SITUACAO.AsInteger;
      EdDsSubTributaria.Text := DataModule3.IBQConsSitTribuDS_SITUACAO.AsString;
    end;
end;

procedure TFMtNf.FormShow(Sender: TObject);
begin
EdDsSubTributaria.Clear;
end;

procedure TFMtNf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

end.
