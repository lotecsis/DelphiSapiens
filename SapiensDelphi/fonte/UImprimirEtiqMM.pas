unit UImprimirEtiqMM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, DBClient, Printers,
  Mask, rxToolEdit, rxCurrEdit, Provider, DBCtrls;

type
  //usado para a impressao
  TPassThroughData = record
      nLen: Integer;
      Data: array[0..2000] of byte;
   end;

  TFImprimirEtiqMM = class(TForm)
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
    edtCodPro: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btnAdicionar: TBitBtn;
    edtQtdPed: TCurrencyEdit;
    lbl3: TLabel;
    dbg1: TDBGrid;
    edtPreCar: TCurrencyEdit;
    lbl4: TLabel;
    dsConsE120Ipd: TDataSource;
    ConsE120IpdQTDPED: TFMTBCDField;
    ConsE120IpdCODPRO: TStringField;
    ConsE120IpdCODDER: TStringField;
    ConsE120IpdDESPRO: TStringField;
    ClientConsE120Ipd: TClientDataSet;
    ProviderConsE120Ipd: TDataSetProvider;
    ClientConsE120IpdQTDPED: TFMTBCDField;
    ClientConsE120IpdCODPRO: TStringField;
    ClientConsE120IpdCODDER: TStringField;
    ClientConsE120IpdDESPRO: TStringField;
    dsClientConsE120Ipd: TDataSource;
    Derivacoes: TADOQuery;
    DerivacoesUSU_CODPRO: TStringField;
    DerivacoesUSU_CODEMP: TIntegerField;
    DerivacoesUSU_CODBARRAS: TStringField;
    DerivacoesUSU_DATA: TDateTimeField;
    DerivacoesUSU_NMPRODMM: TStringField;
    DerivacoesUSU_QTDEVOL: TIntegerField;
    DerivacoesUSU_VOLUME: TIntegerField;
    DerivacoesUSU_CODDER: TStringField;
    dsDerivacoes: TDataSource;
    dblkcbbDerivacoes: TDBLookupComboBox;
    ConsEtiquetas: TADOQuery;
    ConsEtiquetasUSU_CODPRO: TStringField;
    ConsEtiquetasUSU_CODEMP: TIntegerField;
    ConsEtiquetasUSU_CODBARRAS: TStringField;
    ConsEtiquetasUSU_DATA: TDateTimeField;
    ConsEtiquetasUSU_NMPRODMM: TStringField;
    ConsEtiquetasUSU_QTDEVOL: TIntegerField;
    ConsEtiquetasUSU_VOLUME: TIntegerField;
    ConsEtiquetasUSU_CODDER: TStringField;
    ConsPes: TADOQuery;
    ConsPesUSU_CODPRO: TStringField;
    ConsPesUSU_CODEMP: TIntegerField;
    ConsPesUSU_CODBARRAS: TStringField;
    ConsPesUSU_DATA: TDateTimeField;
    ConsPesUSU_NMPRODMM: TStringField;
    ConsPesUSU_QTDEVOL: TIntegerField;
    ConsPesUSU_VOLUME: TIntegerField;
    ConsPesUSU_CODDER: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BCarregarClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure ClientConsE120IpdAfterScroll(DataSet: TDataSet);
    procedure edtPreCarExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function CalculaDigEAN13(Cod:String):String;

  public
    { Public declarations }
    procedure ImpressaoParalela(Texto: AnsiString);
  end;

var
  FImprimirEtiqMM: TFImprimirEtiqMM;

implementation

uses UDm, UDmOra;

{$R *.dfm}

function TFImprimirEtiqMM.CalculaDigEAN13(Cod:String):String; //FUNÇAO PARA CALCULAR O DIGITO VERIF. DO EAN13
function Par(Cod:Integer):Boolean;
begin
      Result:= Cod Mod 2 = 0 ;
end;

var
    i,
    SomaPar,
    SomaImpar:Integer;
begin
     SomaPar:=0;
     SomaImpar:=0;
     for i:=1 to 12 do
       if Par(i) then
          SomaPar:=SomaPar+StrToInt(Cod[i])
       else
          SomaImpar:=SomaImpar+StrToInt(Cod[i]);
      SomaPar:=SomaPar*3;
      i:=0;
      while i < (SomaPar+SomaImpar) do
        Inc(i,10);
      Result:=IntToStr(i-(SomaPar+SomaImpar));
end;


//procedimento para mandar a impressao das etiquetas
procedure TFImprimirEtiqMM.ImpressaoParalela(Texto: AnsiString);
var
   PTBlock: TPassThroughData;
begin
   PTBlock.nLen := Length(Texto);
   StrPCopy(@PTBlock.Data, Texto);
   Escape(printer.handle, PASSTHROUGH, 0, @PTBlock, nil);
end;

procedure TFImprimirEtiqMM.BCarregarClick(Sender: TObject);
var i : integer;
begin
         ClientConsE120Ipd.Close;
         ConsE120Ipd.Close;
         ConsE120Ipd.Parameters.ParamByName('PRECAR').Value := edtPreCar.AsInteger;
         ConsE120Ipd.Open;
         ClientConsE120Ipd.Open;
         ClientConsE120Ipd.First;
         { DmOra.ClientEtiqPesBox.First;
          while not DmOra.ClientEtiqPesBox.Eof do
             begin
               DmOra.ClientEtiqPesBox.Delete;
             end;

          ClientTotal.First;
          while not ClientTotal.Eof do
             begin
               ClientTotal.Delete;
             end;

               //consulta os itens
               ConsE120Ipd.Close;
               ConsE120Ipd.Parameters.ParamByName('PRECAR').Value := edtPreCar.AsInteger;
               ConsE120Ipd.Open;
               ConsE120Ipd.First;
               while not ConsE120Ipd.Eof do
                  begin//3
                     for I := 1 to ConsE120IpdQTDPED.AsInteger do
                        begin//4
                           DmOra.ClientEtiqPesBox.Open;
                           DmOra.ClientEtiqPesBox.Insert;
                           DmOra.ClientEtiqPesBoxCampo1.Value := IntToStr(ConsE120IpdQTDPED.AsInteger);
                           DmOra.ClientEtiqPesBoxCampo2.Value := ConsE120IpdCODPRO.Value;
                           DmOra.ClientEtiqPesBoxCampo3.Value := ConsE120IpdCODDER.Value;
                           DmOra.ClientEtiqPesBoxCampo4.Value := ConsE120IpdCODDER.Value;
                           DmOra.ClientEtiqPesBoxCampo5.Value := '';
                           DmOra.ClientEtiqPesBox.Post;

                        end;//4

                      ConsE120Ipd.Next;
                  end;//3 }


            //consulta os totais
            {ConsTotais.Close;
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
               end;//5 }


end;

procedure TFImprimirEtiqMM.BImprimirClick(Sender: TObject);
var txt : TStringList;
    etiq : string;

begin

      DmOra.ClientEtiqPesBox.First;
      while not DmOra.ClientEtiqPesBox.Eof do
        begin

          txt := TStringList.Create;
          txt.Add('m');
          txt.Add('L');
          txt.Add('H12');
          txt.Add('PG');
          txt.Add('A2');
          txt.Add('D11');
          //txt.Add('131100002000030NADA1 ');
          txt.Add('1F0009001300030'+DmOra.ClientEtiqPesBoxCampo4.AsString);
          //txt.Add('131100001300030NADA2');
          txt.Add('121100000600030'+DmOra.ClientEtiqPesBoxCampo1.Value);
          txt.Add('121100000200030VOL..:'+DmOra.ClientEtiqPesBoxCampo3.Value+' / '+DmOra.ClientEtiqPesBoxCampo2.Value);
          txt.Add('Q0001');
          txt.Add('E');

          Printer.BeginDoc;

          ImpressaoParalela(txt.Text);

          Printer.EndDoc;

          DmOra.ClientEtiqPesBox.Next;
        end;

end;

procedure TFImprimirEtiqMM.btnAdicionarClick(Sender: TObject);
var i : integer;
    vaDigVerif : string;
begin
   if Trim(edtCodPro.Text) = '' then
      begin
        Application.MessageBox('Informe o Produto','Aviso', MB_ICONERROR+MB_OK);
        ActiveControl := edtCodPro;
        Abort;
      end;
   if edtQtdPed.AsInteger = 0 then
      begin
        Application.MessageBox('Informe a Quantidade','Aviso', MB_ICONERROR+MB_OK);
        ActiveControl := edtCodPro;
        Abort;
      end;
   if Trim(dblkcbbDerivacoes.Text) = '' then
      begin
        Application.MessageBox('Informe a Derivação','Aviso', MB_ICONERROR+MB_OK);
        ActiveControl := dblkcbbDerivacoes;
        Abort;
      end;

      //CONSUTA AS ETIQUETAS PARA O PRODUTO
      ConsEtiquetas.Close;
      ConsEtiquetas.Parameters.ParamByName('CODPRO').Value := edtCodPro.Text;
      ConsEtiquetas.Parameters.ParamByName('CODDER').Value := DerivacoesUSU_CODDER.Value;
      ConsEtiquetas.Open;
      ConsEtiquetas.First;

      DmOra.ClientEtiqPesBox.First;

      for i := 1 to edtQtdPed.AsInteger do
          begin
            while not ConsEtiquetas.Eof do
              begin
                 DmOra.ClientEtiqPesBox.Open;
                 DmOra.ClientEtiqPesBox.Insert;
                 DmOra.ClientEtiqPesBoxCampo1.Value := ConsEtiquetasUSU_NMPRODMM.Value;
                 DmOra.ClientEtiqPesBoxCampo2.Value := IntToStr(ConsEtiquetasUSU_QTDEVOL.AsInteger);
                 DmOra.ClientEtiqPesBoxCampo3.Value := IntToStr(ConsEtiquetasUSU_VOLUME.AsInteger);

                 vaDigVerif := CalculaDigEAN13(ConsEtiquetasUSU_CODBARRAS.AsString);
                 DmOra.ClientEtiqPesBoxCampo4.Value := ConsEtiquetasUSU_CODBARRAS.Value+vaDigVerif;

                 DmOra.ClientEtiqPesBoxCampo5.Value := '';
                 DmOra.ClientEtiqPesBox.Post;

                  //CONSULTA SE EXISTE PÉ PARA O ITEM, SE EXISTIR ADICIONA
                 { ConsPes.Close;
                  ConsPes.SQL.Clear;
                  ConsPes.SQL.Add('select * from usu_tcodbarras');
                  ConsPes.SQL.Add('where');
                  ConsPes.SQL.Add('usu_codpro = :codpro AND');
                  ConsPes.SQL.Add('usu_codder like'+QuotedStr('%'+ClientConsE120IpdCODDER.AsString+'%'));
                  ConsPes.SQL.Add('AND usu_nmprodmm like ''%PES%''');
                  ConsPes.Parameters.ParamByName('CODPRO').Value := edtCodPro.Text;
                  ConsPes.Open;
                  if not ConsPes.IsEmpty then
                     begin
                       DmOra.ClientEtiqPesBox.Open;
                       DmOra.ClientEtiqPesBox.Insert;
                       DmOra.ClientEtiqPesBoxCampo1.Value := ConsPesUSU_NMPRODMM.Value;
                       DmOra.ClientEtiqPesBoxCampo2.Value := IntToStr(ConsPesUSU_QTDEVOL.AsInteger);
                       DmOra.ClientEtiqPesBoxCampo3.Value := IntToStr(ConsPesUSU_VOLUME.AsInteger);

                       vaDigVerif := CalculaDigEAN13(ConsPesUSU_CODBARRAS.AsString);
                       DmOra.ClientEtiqPesBoxCampo4.Value := ConsPesUSU_CODBARRAS.Value+vaDigVerif;

                       DmOra.ClientEtiqPesBoxCampo5.Value := '';
                       DmOra.ClientEtiqPesBox.Post;
                     end; }


                 ConsEtiquetas.Next;
              end;
            ConsEtiquetas.First
          end;

   ClientConsE120Ipd.Delete;
   ActiveControl := dbg1;
end;

procedure TFImprimirEtiqMM.ClientConsE120IpdAfterScroll(DataSet: TDataSet);
begin
  edtCodPro.Text := ClientConsE120IpdCODPRO.Value;
  edtQtdPed.AsInteger := ClientConsE120IpdQTDPED.AsInteger;

  Derivacoes.Close;
  Derivacoes.SQL.Clear;
  Derivacoes.SQL.Add('SELECT * FROM USU_TCODBARRAS');
  Derivacoes.SQL.Add(' WHERE');
  Derivacoes.SQL.Add(' USU_CODPRO = :CODPRO and');
  Derivacoes.SQL.Add(' USU_CODDER LIKE '+QuotedStr('%'+ClientConsE120IpdCODDER.AsString+'%'));
  Derivacoes.Parameters.ParamByName('CODPRO').Value := ClientConsE120IpdCODPRO.Value;
  Derivacoes.Open;
  Derivacoes.Last;
  Derivacoes.First;

end;

procedure TFImprimirEtiqMM.edtPreCarExit(Sender: TObject);
begin
  if edtPreCar.Value > 0 then
     begin
       BCarregar.Click;
     end;
end;

procedure TFImprimirEtiqMM.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFImprimirEtiqMM.FormShow(Sender: TObject);
begin

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
