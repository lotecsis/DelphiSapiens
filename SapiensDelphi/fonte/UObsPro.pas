unit UObsPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFObsPro = class(TForm)
    memoObs: TMemo;
    btnAtualizar: TBitBtn;
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vaCodPro : string;
    vnCodEmp : Integer;
  end;

var
  FObsPro: TFObsPro;

implementation

uses UDm3;

{$R *.dfm}

procedure TFObsPro.btnAtualizarClick(Sender: TObject);
begin
   Dm3.ConsSql.Close;
   Dm3.ConsSql.SQL.Clear;
   Dm3.ConsSql.SQL.Add('update e075pro set usu_obspro = :obspro');
   Dm3.ConsSql.SQL.Add(' where');
   Dm3.ConsSql.SQL.Add(' codemp = :codemp and');
   Dm3.ConsSql.SQL.Add(' codpro = :codpro');
   Dm3.ConsSql.Parameters.ParamByName('obspro').Value := memoObs.Text;
   Dm3.ConsSql.Parameters.ParamByName('codemp').Value := vnCodEmp;
   Dm3.ConsSql.Parameters.ParamByName('codpro').Value := vaCodPro;
   Dm3.ConsSql.ExecSQL;

   Application.MessageBox('Atualização realizada com sucesso!','Confirmação',MB_ICONWARNING+MB_OK);
end;

end.
