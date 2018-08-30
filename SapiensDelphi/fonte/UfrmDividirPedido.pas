unit UfrmDividirPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Mask, DBCtrls, Grids, DBGrids, Provider,
  DBClient;

type
  TfrmDividirPedido = class(TForm)
    lbl1: TLabel;
    edtNumPed: TEdit;
    btnNumPed: TBitBtn;
    ConsE120Ped: TADOQuery;
    ConsE120PedCODEMP: TIntegerField;
    ConsE120PedCODFIL: TIntegerField;
    ConsE120PedNUMPED: TIntegerField;
    ConsE120PedCODCLI: TIntegerField;
    ConsE120PedDATEMI: TDateTimeField;
    ConsE120PedSITPED: TIntegerField;
    ConsE120PedCODREP: TIntegerField;
    ConsE120PedNOMCLI: TStringField;
    ConsE120PedCIDCLI: TStringField;
    ConsE120PedSIGUFS: TStringField;
    ConsE120PedNOMREP: TStringField;
    ConsE120PedAPEREP: TStringField;
    ConsE120PedVA_SITPED: TStringField;
    dsConsE120Ped: TDataSource;
    dbedtvaDesCli: TDBEdit;
    dbedtDATEMI: TDBEdit;
    dbedtVA_SITPED: TDBEdit;
    dbedtvaDesRep: TDBEdit;
    ConsE120PedvaDesCli: TStringField;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    ConsE120PedvaDesRep: TStringField;
    lbl5: TLabel;
    dbgrdItens: TDBGrid;
    ConsE120IPD: TADOQuery;
    ConsE120IPDCODEMP: TIntegerField;
    ConsE120IPDCODFIL: TIntegerField;
    ConsE120IPDNUMPED: TIntegerField;
    ConsE120IPDSEQIPD: TIntegerField;
    ConsE120IPDTNSPRO: TStringField;
    ConsE120IPDCODPRO: TStringField;
    ConsE120IPDCODDER: TStringField;
    ConsE120IPDCPLIPD: TStringField;
    ConsE120IPDCODFAM: TStringField;
    ConsE120IPDQTDPED: TFMTBCDField;
    ConsE120IPDQTDFAT: TFMTBCDField;
    ConsE120IPDQTDCAN: TFMTBCDField;
    ConsE120IPDQTDABE: TFMTBCDField;
    ConsE120IPDCODTPR: TStringField;
    ConsE120IPDPREUNI: TFMTBCDField;
    ConsE120IPDVLRBRU: TBCDField;
    ConsE120IPDVLRLIQ: TBCDField;
    ConsE120IPDSITIPD: TIntegerField;
    ConsE120IPDVA_SITIPD: TStringField;
    ProviderConsE120IPD: TDataSetProvider;
    ClientConsE120IPD: TClientDataSet;
    dsClientConsE120IPD: TDataSource;
    ClientConsE120IPDCODEMP: TIntegerField;
    ClientConsE120IPDCODFIL: TIntegerField;
    ClientConsE120IPDNUMPED: TIntegerField;
    ClientConsE120IPDSEQIPD: TIntegerField;
    ClientConsE120IPDTNSPRO: TStringField;
    ClientConsE120IPDCODPRO: TStringField;
    ClientConsE120IPDCODDER: TStringField;
    ClientConsE120IPDCPLIPD: TStringField;
    ClientConsE120IPDCODFAM: TStringField;
    ClientConsE120IPDQTDPED: TFMTBCDField;
    ClientConsE120IPDQTDFAT: TFMTBCDField;
    ClientConsE120IPDQTDCAN: TFMTBCDField;
    ClientConsE120IPDQTDABE: TFMTBCDField;
    ClientConsE120IPDCODTPR: TStringField;
    ClientConsE120IPDPREUNI: TFMTBCDField;
    ClientConsE120IPDVLRBRU: TBCDField;
    ClientConsE120IPDVLRLIQ: TBCDField;
    ClientConsE120IPDSITIPD: TIntegerField;
    ClientConsE120IPDVA_SITIPD: TStringField;
    ClientConsE120IPDQtd101: TIntegerField;
    ClientConsE120IPDvnVlr101: TFloatField;
    ClientConsE120IPDTvnVlr101: TAggregateField;
    dbedtTvnVlr101: TDBEdit;
    procedure edtNumPedKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNumPedClick(Sender: TObject);
    procedure ConsE120PedCalcFields(DataSet: TDataSet);
    procedure edtNumPedExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ClientConsE120IPDCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDividirPedido: TfrmDividirPedido;

implementation

uses UDmOra, UConsPedido;

{$R *.dfm}

procedure TfrmDividirPedido.btnNumPedClick(Sender: TObject);
begin
    FConsPedido := TFConsPedido.Create(Self);
    FConsPedido.vaTelaOrigem := 'DIVIDE_PEDIDO';
    FConsPedido.ShowModal;
end;

procedure TfrmDividirPedido.ClientConsE120IPDCalcFields(DataSet: TDataSet);
begin
  if ClientConsE120IPDQtd101.AsInteger > 0 then
     ClientConsE120IPDvnVlr101.AsFloat := ClientConsE120IPDQtd101.AsInteger * ClientConsE120IPDPREUNI.AsFloat
  else
     ClientConsE120IPDvnVlr101.AsFloat := 0;
end;

procedure TfrmDividirPedido.ConsE120PedCalcFields(DataSet: TDataSet);
begin
  ConsE120PedvaDesCli.AsString := IntToStr(ConsE120PedCODCLI.AsInteger)+'   -   '+ConsE120PedNOMCLI.AsString+'   -   '+ConsE120PedCIDCLI.AsString+'   -   '+ConsE120PedSIGUFS.AsString;
  ConsE120PedvaDesRep.AsString := IntToStr(ConsE120PedCODREP.AsInteger)+'   -   '+ConsE120PedNOMREP.AsString;

end;

procedure TfrmDividirPedido.edtNumPedExit(Sender: TObject);
begin
  if Trim(edtNumPed.Text) <> '' then
     begin
       ConsE120Ped.Close;
       ConsE120Ped.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
       ConsE120Ped.Open;
       if ConsE120Ped.IsEmpty then
          begin
            ClientConsE120IPD.Close;
            ConsE120IPD.Close;
          end
       else
         begin
           ClientConsE120IPD.Close;
           ConsE120IPD.Close;
           ConsE120IPD.Parameters.ParamByName('NUMPED').Value := ConsE120PedNUMPED.Value;
           ConsE120IPD.Open;
           ClientConsE120IPD.Open;
         end;
     end
  else
     begin
       ConsE120Ped.Close;
       ClientConsE120IPD.Close;
       ConsE120IPD.Close;
     end;
end;

procedure TfrmDividirPedido.edtNumPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_F3 then
     begin
       btnNumPed.Click;
     end;
end;

procedure TfrmDividirPedido.edtNumPedKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TfrmDividirPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
