unit UfrmAlteraTipoIso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmAlteraTipoIso = class(TForm)
    cbbTipo: TComboBox;
    btnConfirmar: TBitBtn;
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaCodPro : string;
  end;

var
  frmAlteraTipoIso: TfrmAlteraTipoIso;

implementation

uses UDmOra;

{$R *.dfm}

procedure TfrmAlteraTipoIso.btnConfirmarClick(Sender: TObject);
begin
  if cbbTipo.Text = '' then
     begin
       Application.MessageBox('Informe o Tipo','AVISO',MB_ICONWARNING+MB_OK);
       ActiveControl := cbbTipo;
       Abort;
     end;

     DmOra.ConsSql.Close;
     DmOra.ConsSql.SQL.Clear;
     DmOra.ConsSql.SQL.Add('update usu_te075ctrl set usu_tipo = '+QuotedStr(cbbTipo.Text));
     DmOra.ConsSql.SQL.Add(' where');
     DmOra.ConsSql.SQL.Add('usu_codpro = '+QuotedStr(vaCodPro));
     DmOra.ConsSql.ExecSQL;
     Close;

end;

end.
