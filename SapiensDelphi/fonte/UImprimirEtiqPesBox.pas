unit UImprimirEtiqPesBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, DBClient, Printers;

type
  //usado para a impressao
  TPassThroughData = record
      nLen: Integer;
      Data: array[0..2000] of byte;
   end;

  TFImprimirEtiqPesBox = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ConsPreCargaLib: TADOQuery;
    ConsPreCargaLibUSU_PRECAR: TIntegerField;
    ConsPreCargaLibUSU_DATLIB: TDateTimeField;
    ConsPreCargaLibNOMUSU: TStringField;
    DsConsPreCargaLib: TDataSource;
    DsClientEtiqPesBox: TDataSource;
    ConsE120Ped: TADOQuery;
    ConsE120PedCODCLI: TIntegerField;
    ConsE120PedNOMCLI: TStringField;
    BCarregar: TBitBtn;
    ConsE120Ipd: TADOQuery;
    ConsE120IpdQTDPED: TFMTBCDField;
    ConsE120IpdDESPRO: TStringField;
    ConsE120IpdDESDER: TStringField;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    ConsTotais: TADOQuery;
    ConsTotaisQTDPED: TFMTBCDField;
    ConsTotaisDESPRO: TStringField;
    ConsTotaisDESDER: TStringField;
    ClientTotal: TClientDataSet;
    ClientTotalCampo1: TStringField;
    ClientTotalCampo2: TStringField;
    ClientTotalCampo3: TStringField;
    ClientTotalCampo4: TStringField;
    DsClientTotal: TDataSource;
    Label2: TLabel;
    CadUsu_TPreCar: TADOQuery;
    CadUsu_TPreCarUSU_PRECAR: TIntegerField;
    CadUsu_TPreCarUSU_DATGER: TDateTimeField;
    CadUsu_TPreCarUSU_HORGER: TIntegerField;
    CadUsu_TPreCarUSU_CODUSU: TIntegerField;
    CadUsu_TPreCarUSU_CARLIB: TStringField;
    CadUsu_TPreCarUSU_DATLIB: TDateTimeField;
    CadUsu_TPreCarUSU_HORLIB: TIntegerField;
    CadUsu_TPreCarUSU_USULIB: TIntegerField;
    CadUsu_TPreCarUSU_CARIMP: TStringField;
    CadUsu_TPreCarUSU_ETIPBI: TStringField;
    BImprimir: TBitBtn;
    ConsE120PedCIDCLI: TStringField;
    ConsE120PedSIGUFS: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BCarregarClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure ImpressaoParalela(Texto: AnsiString);
  end;

var
  FImprimirEtiqPesBox: TFImprimirEtiqPesBox;

implementation

uses UDm, UDmOra;

{$R *.dfm}

//procedimento para mandar a impressao das etiquetas
procedure TFImprimirEtiqPesBox.ImpressaoParalela(Texto: AnsiString);
var
   PTBlock: TPassThroughData;
begin
   PTBlock.nLen := Length(Texto);
   StrPCopy(@PTBlock.Data, Texto);
   Escape(printer.handle, PASSTHROUGH, 0, @PTBlock, nil);
end;

procedure TFImprimirEtiqPesBox.BCarregarClick(Sender: TObject);
var i : integer;
begin
    if not ConsPreCargaLib.IsEmpty then
       begin//1
          DmOra.ClientEtiqPesBox.First;
          while not DmOra.ClientEtiqPesBox.Eof do
             begin
               DmOra.ClientEtiqPesBox.Delete;
             end;

          ClientTotal.First;
          while not ClientTotal.Eof do
             begin
               ClientTotal.Delete;
             end;

         //consulta os clientes destintos na carga
         ConsE120Ped.Close;
         ConsE120Ped.Parameters.ParamByName('PRECAR').Value := ConsPreCargaLibUSU_PRECAR.Value;
         ConsE120Ped.Open;
         ConsE120Ped.First;
         while not ConsE120Ped.Eof do
            begin//2
               //consulta os itens
               ConsE120Ipd.Close;
               ConsE120Ipd.Parameters.ParamByName('PRECAR').Value := ConsPreCargaLibUSU_PRECAR.Value;
               ConsE120Ipd.Parameters.ParamByName('CODCLI').Value := ConsE120PedCODCLI.Value;
               ConsE120Ipd.Open;
               ConsE120Ipd.First;
               while not ConsE120Ipd.Eof do
                  begin//3
                     for I := 1 to ConsE120IpdQTDPED.AsInteger do
                        begin//4
                           DmOra.ClientEtiqPesBox.Open;
                           DmOra.ClientEtiqPesBox.Insert;
                           DmOra.ClientEtiqPesBoxCampo1.Value := ConsE120PedNOMCLI.Value;
                           DmOra.ClientEtiqPesBoxCampo2.Value := IntToStr(ConsPreCargaLibUSU_PRECAR.Value);
                           DmOra.ClientEtiqPesBoxCampo3.Value := ConsE120IpdDESPRO.Value;
                           DmOra.ClientEtiqPesBoxCampo4.Value := ConsE120IpdDESDER.Value;
                           DmOra.ClientEtiqPesBoxCampo5.Value := ConsE120PedCIDCLI.Value + ' - '+ConsE120PedSIGUFS.Value;
                           DmOra.ClientEtiqPesBox.Post;

                        end;//4

                      ConsE120Ipd.Next;
                  end;//3

                ConsE120Ped.Next;
            end;//2

            //consulta os totais
            ConsTotais.Close;
            ConsTotais.Parameters.ParamByName('PRECAR').Value := ConsPreCargaLibUSU_PRECAR.Value;
            ConsTotais.Open;
            ConsTotais.First;
            while not ConsTotais.Eof do
               begin//5
                  ClientTotal.Open;
                  ClientTotal.Insert;
                  ClientTotalCampo1.Value := IntToStr(ConsTotaisQTDPED.AsInteger);
                  ClientTotalCampo2.Value := ConsTotaisDESPRO.Value;
                  ClientTotalCampo3.Value := ConsTotaisDESDER.Value;
                  ClientTotal.Post;

                 ConsTotais.Next;
               end;//5

       end;//1
end;

procedure TFImprimirEtiqPesBox.BImprimirClick(Sender: TObject);
var txt : TStringList;
    etiq : string;

begin
if Application.MessageBox('Deseja realmente imprimir?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
   begin//

      DmOra.ClientEtiqPesBox.First;
      while not DmOra.ClientEtiqPesBox.Eof do
        begin//1

          txt := TStringList.Create;
          txt.Add('m');
          txt.Add('L');
          txt.Add('H12');
          txt.Add('PG');
          txt.Add('A2');
          txt.Add('D11');
          txt.Add('131100002000030CARGA: '+IntToStr(ConsPreCargaLibUSU_PRECAR.AsInteger));
          txt.Add('131100001300030'+Copy(DmOra.ClientEtiqPesBoxCampo1.AsString,1,29));
          txt.Add('121100001000030'+DmOra.ClientEtiqPesBoxCampo5.Value);
          txt.Add('121200000200030'+DmOra.ClientEtiqPesBoxCampo3.Value+' '+DmOra.ClientEtiqPesBoxCampo4.Value);
          txt.Add('Q0001');
          txt.Add('E');

          Printer.BeginDoc;

          ImpressaoParalela(txt.Text);

          Printer.EndDoc;

          DmOra.ClientEtiqPesBox.Next;
        end;//1

       //seta a pre carga como etiqueta impressa
      CadUsu_TPreCar.Close;
      CadUsu_TPreCar.Parameters.ParamByName('PRECAR').Value := ConsPreCargaLibUSU_PRECAR.AsInteger;
      CadUsu_TPreCar.Open;
      if not CadUsu_TPreCar.IsEmpty then
         begin//2
            CadUsu_TPreCar.Edit;
            CadUsu_TPreCarUSU_ETIPBI.Value := 'S';
            CadUsu_TPreCar.Post;
         end;//2

      ConsPreCargaLib.Close;
      ConsPreCargaLib.Open;
   end;//
end;

procedure TFImprimirEtiqPesBox.FormShow(Sender: TObject);
begin
ConsPreCargaLib.Close;
ConsPreCargaLib.Open;

          DmOra.ClientEtiqPesBox.First;
          while not DmOra.ClientEtiqPesBox.Eof do
             begin
               DmOra.ClientEtiqPesBox.Delete;
             end;

          ClientTotal.First;
          while not ClientTotal.Eof do
             begin
               ClientTotal.Delete;
             end;
end;

end.
