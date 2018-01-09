unit UAtualizaSaldoTecidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, Provider, DBClient, StdCtrls, Buttons,
  Mask, DBCtrls, Math{para usar o RoundTo};

type
  TFAtualizaSaldoTecidos = class(TForm)
    dbg1: TDBGrid;
    ConsSaldosFila: TADOQuery;
    ConsSaldosFilaCODPRO: TStringField;
    ConsSaldosFilaCODDEP: TStringField;
    ConsSaldosFilaQTDEST: TFMTBCDField;
    ConsSaldosFilaUSU_SALRES: TBCDField;
    ConsSaldosFilaUSU_SALFIL: TBCDField;
    ClientConsSaldosFila: TClientDataSet;
    dsClientConsSaldosFila: TDataSource;
    ProviderSaldosFila: TDataSetProvider;
    ClientConsSaldosFilaCODPRO: TStringField;
    ClientConsSaldosFilaCODDEP: TStringField;
    ClientConsSaldosFilaQTDEST: TFMTBCDField;
    ClientConsSaldosFilaUSU_SALRES: TBCDField;
    ClientConsSaldosFilaUSU_SALFIL: TBCDField;
    btnProcessar: TBitBtn;
    ClientConsSaldosFilaTOT_FILA: TAggregateField;
    dbedtTOT_FILA: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualizaSaldoTecidos: TFAtualizaSaldoTecidos;

implementation

uses UDmOra, UDm2;

{$R *.dfm}

procedure TFAtualizaSaldoTecidos.btnProcessarClick(Sender: TObject);
var vnSalDip,vnSalFila : Double;
begin
    ClientConsSaldosFila.Close;
    ConsSaldosFila.Close;
    ConsSaldosFila.Open;
    ClientConsSaldosFila.Open;

    if not ClientConsSaldosFila.IsEmpty then
       begin
          Screen.Cursor := crHourGlass;
          ClientConsSaldosFila.First;
          while not ClientConsSaldosFila.Eof do
            begin
                if RoundTo(ClientConsSaldosFilaQTDEST.AsFloat,-2) > RoundTo(ClientConsSaldosFilaUSU_SALRES.AsFloat,-2) then
                   begin
                     vnSalDip := RoundTo(ClientConsSaldosFilaQTDEST.AsFloat - ClientConsSaldosFilaUSU_SALRES.AsFloat,-2);
                     if vnSalDip >= RoundTo(ClientConsSaldosFilaUSU_SALFIL.AsFloat,-2) then
                        begin
                          Dm2.CadUsu_TSalTec.Close;
                          Dm2.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := ClientConsSaldosFilaCODPRO.AsString;
                          Dm2.CadUsu_TSalTec.Open;
                          if not Dm2.CadUsu_TSalTec.IsEmpty then
                             begin
                               Dm2.CadUsu_TSalTec.Edit;
                               Dm2.CadUsu_TSalTecUSU_SALRES.Value := RoundTo(Dm2.CadUsu_TSalTecUSU_SALRES.Value + ClientConsSaldosFilaUSU_SALFIL.Value,-2);
                               Dm2.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                               Dm2.CadUsu_TSalTec.Post;
                             end;
                        end
                     else
                        begin
                          Dm2.CadUsu_TSalTec.Close;
                          Dm2.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := ClientConsSaldosFilaCODPRO.AsString;
                          Dm2.CadUsu_TSalTec.Open;
                          if not Dm2.CadUsu_TSalTec.IsEmpty then
                             begin
                                 vnSalFila := RoundTo(ClientConsSaldosFilaUSU_SALFIL.Value - vnSalDip,-2);
                                 Dm2.CadUsu_TSalTec.Edit;
                                 Dm2.CadUsu_TSalTecUSU_SALRES.Value := RoundTo(Dm2.CadUsu_TSalTecUSU_SALRES.Value + vnSalDip,-2);
                                 Dm2.CadUsu_TSalTecUSU_SALFIL.Value := RoundTo(vnSalFila,-2);
                                 Dm2.CadUsu_TSalTec.Post;
                             end;
                        end;


                   end;
              ClientConsSaldosFila.Next;
            end;

            ClientConsSaldosFila.Close;
            ConsSaldosFila.Close;
            ConsSaldosFila.Open;
            ClientConsSaldosFila.Open;
            Screen.Cursor := crDefault;
       end;
end;

procedure TFAtualizaSaldoTecidos.FormShow(Sender: TObject);
begin
    ClientConsSaldosFila.Close;
    ConsSaldosFila.Close;
    ConsSaldosFila.Open;
    ClientConsSaldosFila.Open;
end;

end.
