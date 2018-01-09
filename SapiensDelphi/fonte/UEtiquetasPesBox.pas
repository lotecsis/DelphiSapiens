unit UEtiquetasPesBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, Grids, DBGrids, DB,
  ADODB;

type
  TFEtiquetasPesBox = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BMostrar: TBitBtn;
    EdNumAne: TCurrencyEdit;
    ConsE135Pfa: TADOQuery;
    ConsE135PfaCODCLI: TIntegerField;
    ConsE135PfaNOMCLI: TStringField;
    DsClientRelacaoPesBox: TDataSource;
    ConsE135Pes: TADOQuery;
    ConsE135PesQTDPED: TFMTBCDField;
    ConsE135PesDESPRO: TStringField;
    ConsE135PesDESDER: TStringField;
    ConsTotais: TADOQuery;
    ConsTotaisQTDPED: TFMTBCDField;
    ConsTotaisDESPRO: TStringField;
    ConsTotaisDESDER: TStringField;
    procedure BMostrarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEtiquetasPesBox: TFEtiquetasPesBox;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFEtiquetasPesBox.BMostrarClick(Sender: TObject);
begin
    //limpra o client
    DmOra.ClientRelacaoPesBox.First;
    while not DmOra.ClientRelacaoPesBox.Eof do
       begin
         DmOra.ClientRelacaoPesBox.Delete;
       end;



    ConsE135Pfa.Close;
    ConsE135Pfa.Parameters.ParamByName('PRECAR').Value := EdNumAne.AsInteger;
    ConsE135Pfa.Open;
    //primeiro grava os totais para depois gravar individual
       if not ConsE135Pfa.IsEmpty then
          begin//4
            ConsTotais.Close;
            ConsTotais.Parameters.ParamByName('PRECAR').Value := EdNumAne.AsInteger;
            ConsTotais.Open;
            ConsTotais.First;
            while not ConsTotais.Eof do
               begin//5
                  DmOra.ClientRelacaoPesBox.Insert;
                  DmOra.ClientRelacaoPesBoxCampo1.Value := IntToStr(ConsTotaisQTDPED.AsInteger);
                  DmOra.ClientRelacaoPesBoxCampo2.Value := ConsTotaisDESPRO.Value;
                  DmOra.ClientRelacaoPesBoxCampo3.Value := ConsTotaisDESDER.Value;
                  DmOra.ClientRelacaoPesBoxCampo4.Value := 'T';
                  DmOra.ClientRelacaoPesBox.Post;

                 ConsTotais.Next;
               end;//5


            DmOra.ClientRelacaoPesBox.Insert;
            DmOra.ClientRelacaoPesBoxCampo1.Value := 'TOTAL';
            DmOra.ClientRelacaoPesBoxCampo2.Value := '';
            DmOra.ClientRelacaoPesBoxCampo3.Value := '';
            DmOra.ClientRelacaoPesBoxCampo4.Value := '';
            DmOra.ClientRelacaoPesBox.Post;

            DmOra.ClientRelacaoPesBox.Insert;
            DmOra.ClientRelacaoPesBoxCampo1.Value := '';
            DmOra.ClientRelacaoPesBoxCampo2.Value := '';
            DmOra.ClientRelacaoPesBoxCampo3.Value := '';
            DmOra.ClientRelacaoPesBoxCampo4.Value := '';
            DmOra.ClientRelacaoPesBox.Post;

            DmOra.ClientRelacaoPesBox.Insert;
            DmOra.ClientRelacaoPesBoxCampo1.Value := '';
            DmOra.ClientRelacaoPesBoxCampo2.Value := '';
            DmOra.ClientRelacaoPesBoxCampo3.Value := '';
            DmOra.ClientRelacaoPesBoxCampo4.Value := '';
            DmOra.ClientRelacaoPesBox.Post;

          end;//4

    ConsE135Pfa.First;
    while not ConsE135Pfa.Eof do
       begin//1

       //grava os produtos
         ConsE135Pes.Close;
         ConsE135Pes.Parameters.ParamByName('PRECAR').Value := EdNumAne.AsInteger;
         ConsE135Pes.Parameters.ParamByName('CODCLI').Value := ConsE135PfaCODCLI.Value;
         ConsE135Pes.Open;
         ConsE135Pes.First;
         while not ConsE135Pes.Eof do
           begin//2
               //DmOra.ClientRelacaoPesBox.Open;
               DmOra.ClientRelacaoPesBox.Insert;
               DmOra.ClientRelacaoPesBoxCampo1.Value := IntToStr(ConsE135PesQTDPED.AsInteger);
               DmOra.ClientRelacaoPesBoxCampo2.Value := ConsE135PesDESPRO.Value;
               DmOra.ClientRelacaoPesBoxCampo3.Value := ConsE135PesDESDER.Value;
               DmOra.ClientRelacaoPesBoxCampo4.Value := 'P';
               DmOra.ClientRelacaoPesBox.Post;

               ConsE135Pes.Next;
           end;//2

         //grava o cliente
         if not ConsE135Pes.IsEmpty then
            begin//3
               DmOra.ClientRelacaoPesBox.Open;
               DmOra.ClientRelacaoPesBox.Insert;
               DmOra.ClientRelacaoPesBoxCampo1.Value := IntToStr(ConsE135PfaCODCLI.Value);
               DmOra.ClientRelacaoPesBoxCampo2.Value := ConsE135PfaNOMCLI.Value;
               DmOra.ClientRelacaoPesBoxCampo3.Value := ' ';
               DmOra.ClientRelacaoPesBoxCampo4.Value := 'C';
               DmOra.ClientRelacaoPesBox.Post;


               DmOra.ClientRelacaoPesBox.Insert;
               DmOra.ClientRelacaoPesBoxCampo1.Value := '';
               DmOra.ClientRelacaoPesBoxCampo2.Value := '';
               DmOra.ClientRelacaoPesBox.Post;
            end;//3

         ConsE135Pfa.Next;
       end;//1



end;

procedure TFEtiquetasPesBox.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
      //MUDA A COR DA LINHA
       if DmOra.ClientRelacaoPesBoxCampo4.Value = 'C' then
          with (Sender as TDBGrid).Canvas do
          begin
         // Brush.Color := clSilver; //clSkyBlue;
          FillRect(Rect);
          Brush.Color := $00D7FFD7;
        // Font.Color := clRed;

          if Column.Field.FieldName <> 'Campo2' then
          Column.Field.Alignment := taCenter;

          TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
          end;
end;

procedure TFEtiquetasPesBox.FormShow(Sender: TObject);
begin
//limpra o client
    DmOra.ClientRelacaoPesBox.First;
    while not DmOra.ClientRelacaoPesBox.Eof do
       begin
         DmOra.ClientRelacaoPesBox.Delete;
       end;
end;

end.
