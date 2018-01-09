unit UReceberAdiantamentosFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, rxToolEdit, rxCurrEdit, Buttons;

type
  TFReceberAdiantamentosFuncionario = class(TForm)
    DsCadUsu_TRhAdtFun: TDataSource;
    Label1: TLabel;
    DBE_USU_DATADT: TDBEdit;
    Label2: TLabel;
    DBE_USU_VLRADT: TDBEdit;
    Label3: TLabel;
    DBE_USU_VLRPAR: TDBEdit;
    Label4: TLabel;
    DBE_USU_DATVCT: TDBEdit;
    Label5: TLabel;
    DBE_USU_VLRABE: TDBEdit;
    EdVlrPago: TCurrencyEdit;
    EdVlrDesconto: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    BConfirmar: TBitBtn;
    BCancelar: TBitBtn;
    procedure BConfirmarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReceberAdiantamentosFuncionario: TFReceberAdiantamentosFuncionario;

implementation

uses UDmOra, UPrincipal;

{$R *.dfm}

procedure TFReceberAdiantamentosFuncionario.BCancelarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja cancelar o recebimento?', 'Cancelar Recebimento', MB_ICONQUESTION+MB_YESNO) = idyes then
   Begin//1
     DmOra.CadUsu_TRhAdtFun.Cancel;
     Close;
   End;//1
end;

procedure TFReceberAdiantamentosFuncionario.BConfirmarClick(Sender: TObject);
begin
    if EdVlrPago.Value > 0 then
       begin//1
          if Application.MessageBox('Deseja confirmar o recebimento?', 'Confirmar Recebimento', MB_ICONQUESTION+MB_YESNO) = idyes then
             Begin//2
                DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value := DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value + EdVlrPago.Value;
                DmOra.CadUsu_TRhAdtFunUSU_VLRABE.Value := DmOra.CadUsu_TRhAdtFunUSU_VLRPAR.Value - (DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value + EdVlrDesconto.Value);
                DmOra.CadUsu_TRhAdtFunUSU_VLRDSC.Value := EdVlrDesconto.Value;
                if DmOra.CadUsu_TRhAdtFunUSU_VLRABE.Value = 0 then
                   DmOra.CadUsu_TRhAdtFunUSU_SITADT.Value := 'P';

                DmOra.CadUsu_TRhAdtFun.Post;

                DmOra.CadUsu_TRhAdtPgt.Open;
                DmOra.CadUsu_TRhAdtPgt.Insert;
                DmOra.CadUsu_TRhAdtPgtUSU_NUMCAD.Value := DmOra.CadUsu_TRhAdtFunUSU_NUMCAD.Value;
                DmOra.CadUsu_TRhAdtPgtUSU_NUMADT.Value := DmOra.CadUsu_TRhAdtFunUSU_NUMADT.Value;
                DmOra.CadUsu_TRhAdtPgtUSU_SEQADT.Value := DmOra.CadUsu_TRhAdtFunUSU_SEQADT.Value;
                DmOra.CadUsu_TRhAdtPgtUSU_DATPGT.Value := Date;
                DmOra.CadUsu_TRhAdtPgtUSU_CODUSU.Value := FPrincipal.cd_usuario;
                DmOra.CadUsu_TRhAdtPgtUSU_VLRPGT.Value := EdVlrPago.Value;

                //grava o movimento do pagamento
                DmOra.ConsSql.Close;
                DmOra.ConsSql.SQL.Clear;
                DmOra.ConsSql.SQL.Add('select usu_trhadtpgt.usu_seqpgt from usu_trhadtpgt');
                DmOra.ConsSql.SQL.Add('where');
                DmOra.ConsSql.SQL.Add('usu_trhadtpgt.usu_numcad = :numcad and');
                DmOra.ConsSql.SQL.Add('usu_trhadtpgt.usu_numadt = :numadt and');
                DmOra.ConsSql.SQL.Add('usu_trhadtpgt.usu_seqadt = :seqadt');
                DmOra.ConsSql.SQL.Add('order by usu_trhadtpgt.usu_seqpgt desc');
                DmOra.ConsSql.Parameters.ParamByName('numcad').Value := DmOra.CadUsu_TRhAdtFunUSU_NUMCAD.Value;
                DmOra.ConsSql.Parameters.ParamByName('numadt').Value := DmOra.CadUsu_TRhAdtFunUSU_NUMADT.Value;
                DmOra.ConsSql.Parameters.ParamByName('seqadt').Value := DmOra.CadUsu_TRhAdtFunUSU_SEQADT.Value;
                DmOra.ConsSql.Open;
                if DmOra.ConsSql.IsEmpty then
                   DmOra.CadUsu_TRhAdtPgtUSU_SEQPGT.Value := 1
                else
                   DmOra.CadUsu_TRhAdtPgtUSU_SEQPGT.Value := DmOra.ConsSql.FieldByName('usu_seqpgt').Value + 1;

                DmOra.CadUsu_TRhAdtPgt.Post;

                Close;
             End;//2
       end;//1
end;

procedure TFReceberAdiantamentosFuncionario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
