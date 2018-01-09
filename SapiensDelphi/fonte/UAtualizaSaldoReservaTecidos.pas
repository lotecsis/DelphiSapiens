unit UAtualizaSaldoReservaTecidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, Provider, DBClient,
  Math{para usar o roundTo};

type
  TFAtualizaSaldoReservaTecidos = class(TForm)
    ConsItePedidos: TADOQuery;
    ConsItePedidosUSU_CODEMP: TIntegerField;
    ConsItePedidosUSU_CODFIL: TIntegerField;
    ConsItePedidosUSU_NUMPED: TIntegerField;
    ConsItePedidosUSU_SEQIPD: TIntegerField;
    ConsItePedidosUSU_QTDCOR: TIntegerField;
    ConsItePedidosUSU_TIPCMB: TIntegerField;
    ConsItePedidosUSU_COR001: TStringField;
    ConsItePedidosUSU_COR002: TStringField;
    ConsItePedidosUSU_SEQITE: TIntegerField;
    ConsItePedidosUSU_CODPRO: TStringField;
    ConsItePedidosUSU_CODDER: TStringField;
    ConsItePedidosUSU_TECTRA: TStringField;
    ConsItePedidosUSU_QTDABE: TIntegerField;
    ConsItePedidosUSU_QTDCAN: TIntegerField;
    ConsItePedidosUSU_NUMANE: TBCDField;
    ConsItePedidosUSU_PRECAR: TIntegerField;
    ConsItePedidosUSU_NUMCOM: TIntegerField;
    ConsItePedidosDESPRO: TStringField;
    ConsItePedidosUSU_CORUNI: TBCDField;
    ConsItePedidosUSU_CMP1BB: TBCDField;
    ConsItePedidosUSU_CMP1AE: TBCDField;
    dbg1: TDBGrid;
    btnMostrar: TBitBtn;
    CadUsu_TTemp1001_1: TADOQuery;
    CadUsu_TTemp1001_1USU_CODPRO: TStringField;
    CadUsu_TTemp1001_1USU_QTDEST: TBCDField;
    cmdApagaTemp1001_1: TADOCommand;
    ConsResultado: TADOQuery;
    ConsResultadoCODPRO: TStringField;
    ConsResultadoCODDEP: TStringField;
    ConsResultadoQTDEST: TFMTBCDField;
    ConsResultadoUSU_SALRES: TBCDField;
    ConsResultadoUSU_SALFIL: TBCDField;
    ConsResultadoRESERVA_REAL: TBCDField;
    ClientConsResultado: TClientDataSet;
    ProviderConsResultado: TDataSetProvider;
    ClientConsResultadoCODPRO: TStringField;
    ClientConsResultadoCODDEP: TStringField;
    ClientConsResultadoQTDEST: TFMTBCDField;
    ClientConsResultadoUSU_SALRES: TBCDField;
    ClientConsResultadoUSU_SALFIL: TBCDField;
    ClientConsResultadoRESERVA_REAL: TBCDField;
    dsClientConsResultado: TDataSource;
    ClientConsResultadoQtdDif: TFloatField;
    btnProcessar: TBitBtn;
    lbl1: TLabel;
    ConsItePedidosUSU_CARIMP: TStringField;
    ConsIteCargas: TADOQuery;
    ConsIteCargasUSU_NUMANE: TIntegerField;
    ConsIteCargasUSU_CODPRO: TStringField;
    ConsIteCargasUSU_CODDER: TStringField;
    ConsIteCargasUSU_CODCOR1: TStringField;
    ConsIteCargasUSU_QTDPED: TIntegerField;
    ConsIteCargasUSU_QTDPRO: TIntegerField;
    ConsIteCargasUSU_QTDABE: TIntegerField;
    ConsIteCargasUSU_SALABE1: TBCDField;
    ConsIteCargasUSU_CODCOR2: TStringField;
    ConsIteCargasUSU_SALABE2: TBCDField;
    ConsIteCargasUSU_TIPCOM: TIntegerField;
    ConsIteCargasUSU_CORCOR: TStringField;
    ConsIteCargasUSU_SELITE: TStringField;
    ConsIteCargasUSU_QTDCOR1: TBCDField;
    ConsIteCargasUSU_QTDCOR2: TBCDField;
    ConsIteCargasUSU_CORUNI: TBCDField;
    ConsIteCargasUSU_CMP1BB: TBCDField;
    ConsIteCargasUSU_CMP1AE: TBCDField;
    procedure btnMostrarClick(Sender: TObject);
    procedure ClientConsResultadoCalcFields(DataSet: TDataSet);
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualizaSaldoReservaTecidos: TFAtualizaSaldoReservaTecidos;

implementation

uses UDmOra, UDm2;

{$R *.dfm}

procedure TFAtualizaSaldoReservaTecidos.btnMostrarClick(Sender: TObject);
begin
    Screen.Cursor := crSQLWait;

    cmdApagaTemp1001_1.Prepared;
    cmdApagaTemp1001_1.Execute;

    ConsItePedidos.Close;
    ConsItePedidos.Open;
    ConsItePedidos.First;
    while not ConsItePedidos.Eof do  //grava os pedidos que nao estao em corte
      begin
        if ConsItePedidosUSU_CARIMP.Value <> 'S' then
           begin
              if Trim(ConsItePedidosUSU_COR002.Value) = '' then //cor unica
                 begin
                     CadUsu_TTemp1001_1.Close;
                     CadUsu_TTemp1001_1.Parameters.ParamByName('CODPRO').Value := ConsItePedidosUSU_COR001.Value;
                     CadUsu_TTemp1001_1.Open;
                     if CadUsu_TTemp1001_1.IsEmpty then
                        begin
                          CadUsu_TTemp1001_1.Insert;
                          CadUsu_TTemp1001_1USU_CODPRO.Value := ConsItePedidosUSU_COR001.Value;
                          CadUsu_TTemp1001_1USU_QTDEST.Value := ConsItePedidosUSU_QTDABE.Value * ConsItePedidosUSU_CORUNI.Value;
                          CadUsu_TTemp1001_1.Post;
                        end
                     else
                        begin
                          CadUsu_TTemp1001_1.Edit;
                          CadUsu_TTemp1001_1USU_QTDEST.Value := CadUsu_TTemp1001_1USU_QTDEST.Value + (ConsItePedidosUSU_QTDABE.Value * ConsItePedidosUSU_CORUNI.Value);
                          CadUsu_TTemp1001_1.Post;
                        end;
                 end
              else
                 begin
                     //faz com a cor 01
                     CadUsu_TTemp1001_1.Close;
                     CadUsu_TTemp1001_1.Parameters.ParamByName('CODPRO').Value := ConsItePedidosUSU_COR001.Value;
                     CadUsu_TTemp1001_1.Open;
                     if CadUsu_TTemp1001_1.IsEmpty then
                        begin
                          CadUsu_TTemp1001_1.Insert;
                          CadUsu_TTemp1001_1USU_CODPRO.Value := ConsItePedidosUSU_COR001.Value;
                          CadUsu_TTemp1001_1USU_QTDEST.Value := ConsItePedidosUSU_QTDABE.Value * ConsItePedidosUSU_CMP1BB.Value;
                          CadUsu_TTemp1001_1.Post;
                        end
                     else
                        begin
                          CadUsu_TTemp1001_1.Edit;
                          CadUsu_TTemp1001_1USU_QTDEST.Value := CadUsu_TTemp1001_1USU_QTDEST.Value + (ConsItePedidosUSU_QTDABE.Value * ConsItePedidosUSU_CMP1BB.Value);
                          CadUsu_TTemp1001_1.Post;
                        end;

                     //com a cor 02
                     CadUsu_TTemp1001_1.Close;
                     CadUsu_TTemp1001_1.Parameters.ParamByName('CODPRO').Value := ConsItePedidosUSU_COR002.Value;
                     CadUsu_TTemp1001_1.Open;
                     if CadUsu_TTemp1001_1.IsEmpty then
                        begin
                          CadUsu_TTemp1001_1.Insert;
                          CadUsu_TTemp1001_1USU_CODPRO.Value := ConsItePedidosUSU_COR002.Value;
                          CadUsu_TTemp1001_1USU_QTDEST.Value := ConsItePedidosUSU_QTDABE.Value * ConsItePedidosUSU_CMP1AE.Value;
                          CadUsu_TTemp1001_1.Post;
                        end
                     else
                        begin
                          CadUsu_TTemp1001_1.Edit;
                          CadUsu_TTemp1001_1USU_QTDEST.Value := CadUsu_TTemp1001_1USU_QTDEST.Value + (ConsItePedidosUSU_QTDABE.Value * ConsItePedidosUSU_CMP1AE.Value);
                          CadUsu_TTemp1001_1.Post;
                        end;
                 end;

           end;
        ConsItePedidos.Next;
      end;

    ConsIteCargas.Close;
    ConsIteCargas.Open;
    ConsIteCargas.First;
    while not ConsIteCargas.Eof do  //grava os pedidos que estao em corte
      begin
          if Trim(ConsIteCargasUSU_CODCOR2.Value) = '' then //cor unica
             begin
                 CadUsu_TTemp1001_1.Close;
                 CadUsu_TTemp1001_1.Parameters.ParamByName('CODPRO').Value := ConsIteCargasUSU_CODCOR1.Value;
                 CadUsu_TTemp1001_1.Open;
                 if CadUsu_TTemp1001_1.IsEmpty then
                    begin
                      CadUsu_TTemp1001_1.Insert;
                      CadUsu_TTemp1001_1USU_CODPRO.Value := ConsIteCargasUSU_CODCOR1.Value;
                      CadUsu_TTemp1001_1USU_QTDEST.Value := ConsIteCargasUSU_QTDABE.Value * ConsIteCargasUSU_CORUNI.Value;
                      CadUsu_TTemp1001_1.Post;
                    end
                 else
                    begin
                      CadUsu_TTemp1001_1.Edit;
                      CadUsu_TTemp1001_1USU_QTDEST.Value := CadUsu_TTemp1001_1USU_QTDEST.Value + (ConsIteCargasUSU_QTDABE.Value * ConsIteCargasUSU_CORUNI.Value);
                      CadUsu_TTemp1001_1.Post;
                    end;
             end
          else
             begin
                 //faz com a cor 01
                 CadUsu_TTemp1001_1.Close;
                 CadUsu_TTemp1001_1.Parameters.ParamByName('CODPRO').Value := ConsIteCargasUSU_CODCOR1.Value;
                 CadUsu_TTemp1001_1.Open;
                 if CadUsu_TTemp1001_1.IsEmpty then
                    begin
                      CadUsu_TTemp1001_1.Insert;
                      CadUsu_TTemp1001_1USU_CODPRO.Value := ConsIteCargasUSU_CODCOR1.Value;
                      CadUsu_TTemp1001_1USU_QTDEST.Value := ConsIteCargasUSU_QTDABE.Value * ConsIteCargasUSU_CMP1BB.Value;
                      CadUsu_TTemp1001_1.Post;
                    end
                 else
                    begin
                      CadUsu_TTemp1001_1.Edit;
                      CadUsu_TTemp1001_1USU_QTDEST.Value := CadUsu_TTemp1001_1USU_QTDEST.Value + (ConsIteCargasUSU_QTDABE.Value * ConsIteCargasUSU_CMP1BB.Value);
                      CadUsu_TTemp1001_1.Post;
                    end;

                 //com a cor 02
                 CadUsu_TTemp1001_1.Close;
                 CadUsu_TTemp1001_1.Parameters.ParamByName('CODPRO').Value := ConsIteCargasUSU_CODCOR2.Value;
                 CadUsu_TTemp1001_1.Open;
                 if CadUsu_TTemp1001_1.IsEmpty then
                    begin
                      CadUsu_TTemp1001_1.Insert;
                      CadUsu_TTemp1001_1USU_CODPRO.Value := ConsIteCargasUSU_CODCOR2.Value;
                      CadUsu_TTemp1001_1USU_QTDEST.Value := ConsIteCargasUSU_QTDABE.Value * ConsIteCargasUSU_CMP1AE.Value;
                      CadUsu_TTemp1001_1.Post;
                    end
                 else
                    begin
                      CadUsu_TTemp1001_1.Edit;
                      CadUsu_TTemp1001_1USU_QTDEST.Value := CadUsu_TTemp1001_1USU_QTDEST.Value + (ConsIteCargasUSU_QTDABE.Value * ConsIteCargasUSU_CMP1AE.Value);
                      CadUsu_TTemp1001_1.Post;
                    end;
             end;


        ConsIteCargas.Next;
      end;

      ConsResultado.Close;
      ClientConsResultado.Close;
      ConsResultado.Open;
      ClientConsResultado.Open;

      Screen.Cursor := crDefault;
end;

procedure TFAtualizaSaldoReservaTecidos.btnProcessarClick(Sender: TObject);
var vnSalDisp : Double;
begin

  ClientConsResultado.First;
  while not ClientConsResultado.Eof do
     begin
        Dm2.CadUsu_TSalTec.Close;
        Dm2.CadUsu_TSalTec.Parameters.ParamByName('CODPRO').Value := ClientConsResultadoCODPRO.Value;
        Dm2.CadUsu_TSalTec.Open;
        if not Dm2.CadUsu_TSalTec.IsEmpty then
           begin
             Dm2.CadUsu_TSalTec.Edit;

                   if RoundTo(ClientConsResultadoQTDEST.AsFloat,-2) >= roundTo(ClientConsResultadoRESERVA_REAL.AsFloat,-2) then
                      begin
                        Dm2.CadUsu_TSalTecUSU_SALRES.Value := RoundTo(ClientConsResultadoRESERVA_REAL.Value,-2);
                        Dm2.CadUsu_TSalTecUSU_SALFIL.Value := 0;
                      end
                   else
                      begin
                        vnSalDisp := RoundTo(ClientConsResultadoQTDEST.AsFloat - ClientConsResultadoRESERVA_REAL.AsFloat,-2);
                        Dm2.CadUsu_TSalTecUSU_SALRES.Value := RoundTo(ClientConsResultadoQTDEST.AsFloat,-2);
                        Dm2.CadUsu_TSalTecUSU_SALFIL.Value := RoundTo(vnSalDisp * (-1),-2);
                      end;

             Dm2.CadUsu_TSalTec.Post;
           end;

       ClientConsResultado.Next;
     end;

   ConsResultado.Close;
   ClientConsResultado.Close;
   ConsResultado.Open;
   ClientConsResultado.Open;
end;

procedure TFAtualizaSaldoReservaTecidos.ClientConsResultadoCalcFields(
  DataSet: TDataSet);
begin
  ClientConsResultadoQtdDif.Value := ClientConsResultadoUSU_SALRES.Value - ClientConsResultadoRESERVA_REAL.Value;
end;

end.
