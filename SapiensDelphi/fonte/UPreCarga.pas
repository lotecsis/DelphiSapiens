unit UPreCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, DB, Mask, DBCtrls,
  Buttons, ADODB, rxToolEdit, rxCurrEdit, ImgList;

type
  TFPreCarga = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    EdPreCarga: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DsPreCarga: TDataSource;
    BExcluir: TBitBtn;
    BAdiciona: TBitBtn;
    BRemove: TBitBtn;
    DsConsUsu_TIteCar: TDataSource;
    ConsVolPro: TADOQuery;
    ConsVolProCODPRO: TStringField;
    ConsVolProCODDER: TStringField;
    ConsVolProVOLDER: TBCDField;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    BLiberar: TBitBtn;
    LLiberado: TLabel;
    Label5: TLabel;
    BSobi: TSpeedButton;
    BDece: TSpeedButton;
    UltimoUsu_SeqIte: TADOQuery;
    UltimoUsu_SeqIteUSU_PRECAR: TIntegerField;
    UltimoUsu_SeqIteUSU_SEQITE: TIntegerField;
    UltimoUsu_SeqIteUSU_FILPED: TIntegerField;
    UltimoUsu_SeqIteUSU_NUMPED: TIntegerField;
    UltimoUsu_SeqIteUSU_CODUSU: TIntegerField;
    UltimoUsu_SeqIteUSU_DATGER: TDateTimeField;
    UltimoUsu_SeqIteUSU_HORGER: TIntegerField;
    UltimoUsu_SeqIteUSU_CODREP: TIntegerField;
    SeExisteUsu_TCorCar: TADOQuery;
    SeExisteUsu_TCorCarUSU_NUMANE: TIntegerField;
    SeExisteUsu_TCorCarUSU_CODPRO: TStringField;
    SeExisteUsu_TCorCarUSU_CODDER: TStringField;
    SeExisteUsu_TCorCarUSU_CODCOR1: TStringField;
    SeExisteUsu_TCorCarUSU_QTDPED: TIntegerField;
    SeExisteUsu_TCorCarUSU_QTDPRO: TIntegerField;
    SeExisteUsu_TCorCarUSU_QTDABE: TIntegerField;
    SeExisteUsu_TCorCarUSU_SALABE1: TBCDField;
    SeExisteUsu_TCorCarUSU_CODCOR2: TStringField;
    SeExisteUsu_TCorCarUSU_SALABE2: TBCDField;
    SeExisteUsu_TCorCarUSU_TIPCOM: TIntegerField;
    SeExisteUsu_TCorCarUSU_CORCOR: TStringField;
    SeExisteUsu_TCorCarUSU_SELITE: TStringField;
    SeExisteUsu_TCorCarUSU_QTDCOR1: TBCDField;
    SeExisteUsu_TCorCarUSU_QTDCOR2: TBCDField;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    ConsUsuTPreCarNLib: TADOQuery;
    ConsUsuTPreCarNLibUSU_PRECAR: TIntegerField;
    ConsUsuTPreCarNLibUSU_DATGER: TDateTimeField;
    ConsUsuTPreCarNLibUSU_HORGER: TIntegerField;
    ConsUsuTPreCarNLibUSU_CODUSU: TIntegerField;
    ConsUsuTPreCarNLibUSU_CARLIB: TStringField;
    ConsUsuTPreCarNLibUSU_DATLIB: TDateTimeField;
    ConsUsuTPreCarNLibUSU_HORLIB: TIntegerField;
    ConsUsuTPreCarNLibUSU_USULIB: TIntegerField;
    ConsUsuTPreCarNLibUSU_CARIMP: TStringField;
    ConsUsuTPreCarNLibNOMUSU: TStringField;
    DsConsUsuTPreCarNLib: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BSair: TBitBtn;
    ValidaPreCarga: TADOQuery;
    ValidaPreCargaUSU_PRECAR: TIntegerField;
    ValidaPreCargaUSU_DATGER: TDateTimeField;
    ValidaPreCargaUSU_HORGER: TIntegerField;
    ValidaPreCargaUSU_CODUSU: TIntegerField;
    ValidaPreCargaUSU_CARLIB: TStringField;
    ValidaPreCargaUSU_DATLIB: TDateTimeField;
    ValidaPreCargaUSU_HORLIB: TIntegerField;
    ValidaPreCargaUSU_USULIB: TIntegerField;
    ValidaPreCargaUSU_CARIMP: TStringField;
    EdVolProd: TCurrencyEdit;
    EdVlrTot: TCurrencyEdit;
    BitBtn1: TBitBtn;
    DsReserva: TDataSource;
    BPendencias: TBitBtn;
    procedure EdPreCargaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BAdicionaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BRemoveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BLiberarClick(Sender: TObject);
    procedure BSobiClick(Sender: TObject);
    procedure BDeceClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure TbConsultaShow(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BPendenciasClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPreCarga: TFPreCarga;

implementation

uses UDm1, UPrincipal, UAddItePreCarga, UDm, UPendenciasPreCarga;

{$R *.dfm}

procedure TFPreCarga.EdPreCargaExit(Sender: TObject);
var vnPreCar : Integer;
    Hora : String;
    vnVolPro,vnVlrTot : Double;
    cursor : TCursor;
begin
if EdPreCarga.Text <> '' then
begin
  vnPreCar := StrToInt(EdPreCarga.Text);
  if vnPreCar = 0 then
     begin//1
     Dm1.ConsUsu_TIteCar.Close;
     Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := 0;
     Dm1.ConsUsu_TIteCar.Open;

       Dm1.UltimoPreCarga.Close;
       Dm1.UltimoPreCarga.Open;
       if Dm1.UltimoPreCargaULTIMO.Value = 0 then
         vnPreCar := 1
       else
         vnPreCar := Dm1.UltimoPreCargaULTIMO.AsInteger;

         EdPreCarga.Text := IntToStr(vnPreCar);
         Dm1.CadUsu_TPreCar.Open;
         Dm1.CadUsu_TPreCar.Insert;
         Dm1.CadUsu_TPreCarUSU_PRECAR.Value := vnPreCar;
         Dm1.CadUsu_TPreCarUSU_DATGER.Value := Date;
         Dm1.CadUsu_TPreCarUSU_CODUSU.Value := FPrincipal.cd_usuario;
         Dm1.CadUsu_TPreCarUSU_CARLIB.Value := 'N';
         Dm1.CadUsu_TPreCarUSU_CARIMP.Value := 'N';
         Dm1.CadUsu_TPreCarUSU_ETIPBI.Value := 'N';
         Dm1.CadUsu_TPreCarUSU_INPEDDIV.Value := 'N';
         Hora := TimeToStr(Time);
         Dm1.CadUsu_TPreCarUSU_HORGER.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
         Dm1.CadUsu_TPreCar.Post;
         LLiberado.Caption := 'NÃO';
     end//1
  else
     begin//2
         Dm1.CadUsu_TPreCar.Close;
         Dm1.CadUsu_TPreCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
         Dm1.CadUsu_TPreCar.Open;
         if Dm1.CadUsu_TPreCar.IsEmpty then
            begin//3
              Application.MessageBox('Pré-Carga não encontrada!','Aviso', MB_ICONWARNING+MB_OK);

              Dm1.ConsUsu_TIteCar.Close;
              Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := 0;
              Dm1.ConsUsu_TIteCar.Open;

              EdPreCarga.Clear;
              EdPreCarga.SetFocus;
              LLiberado.Caption := '';
            end//3
         else
            begin//4
             cursor := Screen.Cursor;
             Screen.Cursor := crSQLWait;

            if Dm1.CadUsu_TPreCarUSU_CARLIB.Value = 'S' then
                    begin
                       LLiberado.Caption := 'SIM';
                       LLiberado.Font.Color := clGreen;
                    end
                 else
                    begin
                       LLiberado.Caption := 'NÃO';
                       LLiberado.Font.Color := clRed;
                    end;

              Dm1.ConsUsu_TIteCar.Close;
              Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
              Dm1.ConsUsu_TIteCar.Open;

              DBGrid1.DataSource := DsReserva;
              vnVolPro := 0;
              Dm1.ConsUsu_TIteCar.First;
              while not Dm1.ConsUsu_TIteCar.Eof do
                 begin//5

                     //consulta os produtos do pedido
                     Dm1.ConsE120Ipd.Close;
                     Dm1.ConsE120Ipd.Parameters.ParamByName('codemp').Value := Dm1.ConsUsu_TIteCarCODEMP.Value;
                     Dm1.ConsE120Ipd.Parameters.ParamByName('codfil').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
                     Dm1.ConsE120Ipd.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
                     Dm1.ConsE120Ipd.Open;
                     //percorre todos os produtos do pedido
                     Dm1.ConsE120Ipd.First;
                     while not Dm1.ConsE120Ipd.Eof do
                       begin//6
                         //faz o calculo da metragem cubica
                        ConsVolPro.Close;
                        ConsVolPro.Parameters.ParamByName('codpro').Value := Dm1.ConsE120IpdCODPRO.Value;
                        ConsVolPro.Parameters.ParamByName('codder').Value := Dm1.ConsE120IpdCODDER.Value;
                        ConsVolPro.Open;
                        vnVolPro := vnVolPro + ConsVolProVOLDER.Value * Dm1.ConsE120IpdQTDABE.Value;

                        //faz o calculo do valor da pre-carga
                        vnVlrTot := vnVlrTot + Dm1.ConsE120IpdVLRBRU.Value;

                        Dm1.ConsE120Ipd.Next;
                       end;//6

                    Dm1.ConsUsu_TIteCar.Next;
                 end;//5

                 EdVolProd.Value := vnVolPro;
                 EdVlrTot.Value := vnVlrTot;
                 Screen.Cursor := cursor;
                 DBGrid1.DataSource := DsConsUsu_TIteCar;

            end;//4

     
     end;//2
 end;
end;

procedure TFPreCarga.FormCreate(Sender: TObject);
begin
  Dm1.CadUsu_TPreCar.Open;
end;

procedure TFPreCarga.BAdicionaClick(Sender: TObject);
begin
if EdPreCarga.Text <> '' then
   begin
      FAddItePreCarga := TFAddItePreCarga.Create(Self);
      FAddItePreCarga.EdPreCar.Text := EdPreCarga.Text;
      FAddItePreCarga.ShowModal;
      FreeAndNil(FAddItePreCarga);
   end;
end;

procedure TFPreCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFPreCarga.BRemoveClick(Sender: TObject);
var vnVolPro, vnVlrCampo, vnResult, vnVlrTot,vnVlrVlr,vnResultVl : Double;
    vaCodcor2 : string;
begin

if (not Dm1.ConsUsu_TIteCar.IsEmpty) and (EdPreCarga.Text <> '') then
 begin
if Application.MessageBox('Deseja Realmente Excluir o Registro?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
      begin//1
         //apaga o registro da tabela usu_titecar
         Dm1.CadUsu_TIteCar.Close;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TIteCarUSU_PRECAR.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_TIteCarUSU_SEQITE.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('filped').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('codrep').Value := Dm1.ConsUsu_TIteCarUSU_CODREP.Value;
         Dm1.CadUsu_TIteCar.Open;
         Dm1.CadUsu_TIteCar.Delete;

         //atualiza a tabela e120ped o campo com o numero da pre-carga 0(zero)
         Dm1.CadE120Ped.Close;
         Dm1.CadE120Ped.Parameters.ParamByName('codemp').Value := Dm1.ConsUsu_TIteCarCODEMP.Value;
         Dm1.CadE120Ped.Parameters.ParamByName('codfil').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
         Dm1.CadE120Ped.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
         Dm1.CadE120Ped.Open;
         Dm1.CadE120Ped.Edit;
         Dm1.CadE120PedUSU_PRECAR.Value := 0;
         Dm1.CadE120Ped.Post;

         //consulta os produtos do pedido
         Dm1.ConsE120Ipd.Close;
         Dm1.ConsE120Ipd.Parameters.ParamByName('codemp').Value := Dm1.ConsUsu_TIteCarCODEMP.Value;
         Dm1.ConsE120Ipd.Parameters.ParamByName('codfil').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
         Dm1.ConsE120Ipd.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
         Dm1.ConsE120Ipd.Open;
         //percorre todos os produtos do pedido
         vnVlrTot := 0;
         vnVolPro := 0;
         Dm1.ConsE120Ipd.First;
         while not Dm1.ConsE120Ipd.Eof do
            begin//4
                //consulta as cores de cada produto do pedido
                Dm1.ConsUsu_T120IpdPC.Close;
                Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('codemp').Value := Dm1.ConsE120IpdCODEMP.Value;
                Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('codfil').Value := Dm1.ConsE120IpdCODFIL.Value;
                Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('numped').Value := Dm1.ConsE120IpdNUMPED.Value;
                Dm1.ConsUsu_T120IpdPC.Parameters.ParamByName('seqipd').Value := Dm1.ConsE120IpdSEQIPD.Value;
                Dm1.ConsUsu_T120IpdPC.Open;

                //percorre todas as cores de cada produto do pedido da pre-carga
                Dm1.ConsUsu_T120IpdPC.First;
                while not Dm1.ConsUsu_T120IpdPC.Eof do
                    begin//5
                       Dm1.CadUsu_T120Ipd.Close;
                       Dm1.CadUsu_T120Ipd.Parameters.ParamByName('codemp').Value := Dm1.ConsUsu_T120IpdPCUSU_CODEMP.Value;
                       Dm1.CadUsu_T120Ipd.Parameters.ParamByName('codfil').Value := Dm1.ConsUsu_T120IpdPCUSU_CODFIL.Value;
                       Dm1.CadUsu_T120Ipd.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_T120IpdPCUSU_NUMPED.Value;
                       Dm1.CadUsu_T120Ipd.Parameters.ParamByName('seqipd').Value := Dm1.ConsUsu_T120IpdPCUSU_SEQIPD.Value;
                       Dm1.CadUsu_T120Ipd.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_T120IpdPCUSU_SEQITE.Value;
                       Dm1.CadUsu_T120Ipd.Open;
                       Dm1.CadUsu_T120Ipd.Edit;
                       Dm1.CadUsu_T120IpdUSU_PRECAR.Value := 0;
                       Dm1.CadUsu_T120Ipd.Post;

                       //se a pre-carga ja foi importada para produção  e o produto for estofado
                       if (Dm1.CadUsu_TPreCarUSU_CARIMP.Value = 'S') and (Dm1.ConsE120IpdCODFAM.Value = '01001') then
                          begin//6
                             //consulta o saldo do produto - se ja nao foi todo cortado
                             SeExisteUsu_TCorCar.Close;
                             SeExisteUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                             SeExisteUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                             SeExisteUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                             SeExisteUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                              if Dm1.ConsUsu_T120IpdPCUSU_COR002.Value = '' then
                                      vaCodcor2 := ' '
                                   else
                                      vaCodcor2 := Dm1.ConsUsu_T120IpdPCUSU_COR002.Value;
                             SeExisteUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodcor2;
                             SeExisteUsu_TCorCar.Open;


                             //if SeExisteUsu_TCorCarUSU_QTDABE.Value >= Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value then
                               //begin//7
                                   //atualiza a quantidade de produtos usu_tprocar
                                   Dm1.CadUsu_TProCar.Close;
                                   Dm1.CadUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                                   Dm1.CadUsu_TProCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                   Dm1.CadUsu_TProCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                   Dm1.CadUsu_TProCar.Open;
                                   Dm1.CadUsu_TProCar.Edit;
                                   if Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value > Dm1.CadUsu_TProCarUSU_QTDABE.Value then
                                      begin
                                         Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - Dm1.CadUsu_TProCarUSU_QTDABE.Value;
                                         Dm1.CadUsu_TProCarUSU_QTDABE.Value := 0;
                                      end
                                   else
                                      begin
                                        Dm1.CadUsu_TProCarUSU_QTDPED.Value := Dm1.CadUsu_TProCarUSU_QTDPED.Value - Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                        Dm1.CadUsu_TProCarUSU_QTDABE.Value := Dm1.CadUsu_TProCarUSU_QTDABE.Value - Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                      end;

                                   if Dm1.CadUsu_TProCarUSU_QTDABE.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
                                      Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'N'
                                   else if Dm1.CadUsu_TProCarUSU_QTDPRO.Value = Dm1.CadUsu_TProCarUSU_QTDPED.Value then
                                           Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'S'
                                        else
                                           Dm1.CadUsu_TProCarUSU_PROCOR.Value := 'P';
                                   Dm1.CadUsu_TProCar.Post;
                                   //se a quantidade pedida ficar zerado apaga o registro
                                   if Dm1.CadUsu_TProCarUSU_QTDPED.Value = 0 then
                                   Dm1.CadUsu_TProCar.Delete;

                                   //consulta o consumo de tecido do produto
                                   Dm1.ConsE075DerConsTec.Close;
                                   Dm1.ConsE075DerConsTec.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                   Dm1.ConsE075DerConsTec.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                   Dm1.ConsE075DerConsTec.Open;

                                   //atualiza a quantidade das cores
                                   Dm1.CadUsu_TCorCar.Close;
                                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                   if Dm1.ConsUsu_T120IpdPCUSU_COR002.Value = '' then
                                      vaCodcor2 := ' '
                                   else
                                      vaCodcor2 := Dm1.ConsUsu_T120IpdPCUSU_COR002.Value;

                                   Dm1.CadUsu_TCorCar.Parameters.ParamByName('codcor2').Value := vaCodcor2;
                                   Dm1.CadUsu_TCorCar.Open;
                                   Dm1.CadUsu_TCorCar.Edit;

                                   if Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value > Dm1.CadUsu_TCorCarUSU_QTDABE.Value then
                                     begin//14
                                       Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - Dm1.CadUsu_TCorCarUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorCarUSU_QTDABE.Value := 0;
                                       Dm1.CadUsu_TCorCarUSU_SALABE1.Value := 0;
                                       Dm1.CadUsu_TCorCarUSU_SALABE2.Value := 0;
                                       Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'S'
                                     end//14
                                   else
                                     begin//15
                                       Dm1.CadUsu_TCorCarUSU_QTDPED.Value := Dm1.CadUsu_TCorCarUSU_QTDPED.Value - Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                       Dm1.CadUsu_TCorCarUSU_QTDABE.Value := Dm1.CadUsu_TCorCarUSU_QTDABE.Value - Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;

                                       if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 1 then
                                          begin//8
                                            Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CORUNI.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                          end//8
                                       else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 2 then
                                               begin//9
                                                  Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP1BB.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                                  Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP1AE.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                               end//9
                                            else if Dm1.CadUsu_TCorCarUSU_TIPCOM.Value = 3 then
                                                    begin//10
                                                       Dm1.CadUsu_TCorCarUSU_SALABE1.Value := Dm1.CadUsu_TCorCarUSU_SALABE1.Value - (Dm1.ConsE075DerConsTecUSU_CMP2BB.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                                       Dm1.CadUsu_TCorCarUSU_SALABE2.Value := Dm1.CadUsu_TCorCarUSU_SALABE2.Value - (Dm1.ConsE075DerConsTecUSU_CMP2EN.Value * Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value);
                                                    end;//10

                                        if Dm1.CadUsu_TCorCarUSU_QTDPED.Value =  Dm1.CadUsu_TCorCarUSU_QTDABE.Value then
                                           Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'N'
                                        else if Dm1.CadUsu_TCorCarUSU_QTDPRO.Value =  Dm1.CadUsu_TCorCarUSU_QTDABE.Value then
                                                Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'S'
                                              else
                                                Dm1.CadUsu_TCorCarUSU_CORCOR.Value := 'P';
                                     end;//15
                                   Dm1.CadUsu_TCorCar.Post;

                                   //se q quantidade pedida da cor ficar zerada apaga o registro
                                   if Dm1.CadUsu_TCorCarUSU_QTDPED.Value = 0 then
                                      Dm1.CadUsu_TCorCar.Delete;

                                   //atualiza o saldo geral do produto
                                   Dm1.CadUsu_TSalPro.Close;
                                   Dm1.CadUsu_TSalPro.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                   Dm1.CadUsu_TSalPro.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                   Dm1.CadUsu_TSalPro.Open;
                                   Dm1.CadUsu_TSalPro.Edit;
                                   if Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value > Dm1.CadUsu_TSalProUSU_QTDABE.Value then
                                      begin//16
                                         Dm1.CadUsu_TSalProUSU_QTDABE.Value := 0;
                                      end//16
                                   else
                                      begin//17
                                         Dm1.CadUsu_TSalProUSU_QTDABE.Value := Dm1.CadUsu_TSalProUSU_QTDABE.Value - Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;
                                      end;//17
                                   Dm1.CadUsu_TSalPro.Post;
                                   if Dm1.CadUsu_TSalProUSU_QTDABE.Value = 0 then
                                      begin//11
                                         Dm1.CadUsu_TSalPro.Delete;
                                      end;//11

                                   //verifica se existe a cor do saldo geral, se o saldo ficar igual a zero apaga o registro
                                   Dm1.CadUsu_TCorSal.Close;
                                   Dm1.CadUsu_TCorSal.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_T120IpdPCUSU_CODPRO.Value;
                                   Dm1.CadUsu_TCorSal.Parameters.ParamByName('codder').Value := Dm1.ConsUsu_T120IpdPCUSU_CODDER.Value;
                                   Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor1').Value := Dm1.ConsUsu_T120IpdPCUSU_COR001.Value;
                                   if Dm1.ConsUsu_T120IpdPCUSU_COR002.Value = '' then
                                      vaCodcor2 := ' '
                                   else
                                      vaCodcor2 := Dm1.ConsUsu_T120IpdPCUSU_COR002.Value;

                                   Dm1.CadUsu_TCorSal.Parameters.ParamByName('codcor2').Value := vaCodcor2;
                                   Dm1.CadUsu_TCorSal.Open;
                                   Dm1.CadUsu_TCorSal.Edit;
                                   if Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value > Dm1.CadUsu_TCorSalUSU_QTDABE.Value then
                                      begin//18
                                         Dm1.CadUsu_TCorSalUSU_QTDABE.Value := 0;
                                      end//18
                                   else
                                      begin//19
                                         Dm1.CadUsu_TCorSalUSU_QTDABE.Value := Dm1.CadUsu_TCorSalUSU_QTDABE.Value - Dm1.ConsUsu_T120IpdPCUSU_QTDABE.Value;;
                                      end;//19
                                   Dm1.CadUsu_TCorSal.Post;
                                   if Dm1.CadUsu_TCorSalUSU_QTDABE.Value = 0 then
                                      begin//12
                                        Dm1.CadUsu_TCorSal.Delete;
                                      end;//12
                               // end;//7

                            //atualiza a consulta dos produtos da carga se todos os produtos ja estiverem
                            //produzidos muda a situalçao da carga para produzido
                            dm1.ConsUsu_TProCar.Close;
                            dm1.ConsUsu_TProCar.SQL.Clear;
                            dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
                            dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
                            dm1.ConsUsu_TProCar.SQL.Add('where');
                            dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane and');
                            dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_procor in (''N'',''P'')');
                            dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
                            dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                            dm1.ConsUsu_TProCar.Open;
                            if dm1.ConsUsu_TProCar.IsEmpty then
                              begin//13
                                Dm1.CadUsu_TCarPro2.Close;
                                Dm1.CadUsu_TCarPro2.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                                Dm1.CadUsu_TCarPro2.Open;
                                Dm1.CadUsu_TCarPro2.Edit;
                                Dm1.CadUsu_TCarPro2USU_CARPRO.Value := 'S';
                                Dm1.CadUsu_TCarPro2.Post;
                                //atualiza a consulta das cargas em produao
                                Dm1.ConsUsu_TCarPro.Close;
                                Dm1.ConsUsu_TCarPro.Open;
                              end;//13

                             //atualiza a consulta dos produtos da carga se não exixtir + produtos
                            //apaga a pre-carga da produção e muda a situação da pre-carga p/nao liberado e
                            //muda a situaçao de importada p/n importada
                            dm1.ConsUsu_TProCar.Close;
                            dm1.ConsUsu_TProCar.SQL.Clear;
                            dm1.ConsUsu_TProCar.SQL.Add('select usu_tprocar.*, e075pro.despro from usu_tprocar');
                            dm1.ConsUsu_TProCar.SQL.Add('inner join e075pro on e075pro.codpro = usu_tprocar.usu_codpro');
                            dm1.ConsUsu_TProCar.SQL.Add('where');
                            dm1.ConsUsu_TProCar.SQL.Add('usu_tprocar.usu_numane = :numane');
                            dm1.ConsUsu_TProCar.SQL.Add('order by e075pro.despro,usu_tprocar.usu_codder');
                            dm1.ConsUsu_TProCar.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                            dm1.ConsUsu_TProCar.Open;
                            if dm1.ConsUsu_TProCar.IsEmpty then
                               begin//14
                                  Dm1.CadUsu_TCarPro2.Close;
                                  Dm1.CadUsu_TCarPro2.Parameters.ParamByName('numane').Value := StrToInt(EdPreCarga.Text);
                                  Dm1.CadUsu_TCarPro2.Open;
                                  Dm1.CadUsu_TCarPro2.Delete;

                                  Dm1.CadUsu_TPreCar.Close;
                                  Dm1.CadUsu_TPreCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
                                  Dm1.CadUsu_TPreCar.Open;
                                  Dm1.CadUsu_TPreCar.Edit;
                                  Dm1.CadUsu_TPreCarUSU_CARLIB.Value := 'N';
                                  Dm1.CadUsu_TPreCarUSU_CARIMP.Value := 'N';
                                  Dm1.CadUsu_TPreCar.Post;

                                  LLiberado.Caption := 'NÃO';
                                  LLiberado.Font.Color := clRed;
                               end;//14
                          end;//6

                       Dm1.ConsUsu_T120IpdPC.Next;
                    end;//5


                //faz o calculo da metragem cubica
                ConsVolPro.Close;
                ConsVolPro.Parameters.ParamByName('codpro').Value := Dm1.ConsE120IpdCODPRO.Value;
                ConsVolPro.Parameters.ParamByName('codder').Value := Dm1.ConsE120IpdCODDER.Value;
                ConsVolPro.Open;
                vnVolPro := vnVolPro + ConsVolProVOLDER.Value * Dm1.ConsE120IpdQTDABE.Value;

                //faz o calculo do valor da pre-carga
                vnVlrTot := vnVlrTot + Dm1.ConsE120IpdVLRLIQ.Value;

                Dm1.ConsE120Ipd.Next;
         end;//4
           vnVlrCampo := EdVolProd.Value;
           vnResult := vnVlrCampo - vnVolPro;
           EdVolProd.Value := vnResult;
           vnVlrVlr := EdVlrTot.Value;
           vnResultVl := vnVlrVlr - vnVlrTot;
           EdVlrTot.Value := vnResultVl;
           //atualiza a consulta dos pedidos da pre-carga
           Dm1.ConsUsu_TIteCar.Close;
           Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
           Dm1.ConsUsu_TIteCar.Open;
      end;//1
 end;
end;

procedure TFPreCarga.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FPreCarga.Name,FPrincipal.vnCodCon);
     Dm1.ConsUsu_TIteCar.Close;
     Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := 0;
     Dm1.ConsUsu_TIteCar.Open;
     PaginaControle.ActivePageIndex := 0;
     EdPreCarga.SetFocus;

end;

procedure TFPreCarga.BLiberarClick(Sender: TObject);
var Hora : String;
begin
 if EdPreCarga.Text <> '' then
    begin
      Dm1.CadUsu_TPreCar.Close;
      Dm1.CadUsu_TPreCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
      Dm1.CadUsu_TPreCar.Open;
      if Dm1.CadUsu_TPreCarUSU_CARLIB.Value <> 'S' then
         begin
           if Application.MessageBox('Deseja Realmente Liberar a Pre-Carga?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
              begin
                 if Dm1.ConsUsu_TIteCar.IsEmpty then
                    begin
                          Application.MessageBox('Não existe pedidos na pré-carga','Aviso', MB_ICONWARNING+MB_OK);
                    end
                 else
                    begin
                      Dm1.CadUsu_TPreCar.Edit;
                      Dm1.CadUsu_TPreCarUSU_CARLIB.Value := 'S';
                      Dm1.CadUsu_TPreCarUSU_DATLIB.Value := Date;
                      Dm1.CadUsu_TPreCarUSU_USULIB.Value := FPrincipal.cd_usuario;
                      Hora := TimeToStr(Time);
                      Dm1.CadUsu_TPreCarUSU_HORLIB.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
                      Dm1.CadUsu_TPreCar.Post;

                      LLiberado.Caption := 'SIM';
                      LLiberado.Font.Color := clGreen;
                    end;
              end;

         end;
    end;

end;

procedure TFPreCarga.BPendenciasClick(Sender: TObject);
begin
  if trim(EdPreCarga.Text) <> '' then
     begin
       FPendenciasPreCarga := TFPendenciasPreCarga.Create(Self);
       FPendenciasPreCarga.ShowModal;
       FreeAndNil(FPendenciasPreCarga);


     end;
end;

procedure TFPreCarga.BSobiClick(Sender: TObject);
var vnSeqAtu : Integer;
begin
  if not Dm1.ConsUsu_TIteCar.IsEmpty then
    begin
      if Dm1.ConsUsu_TIteCarUSU_SEQITE.Value > 1 then
         begin
             Dm1.CadUsu_TIteCar.Close;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TIteCarUSU_PRECAR.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_TIteCarUSU_SEQITE.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('filped').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('codrep').Value := Dm1.ConsUsu_TIteCarUSU_CODREP.Value;
             Dm1.CadUsu_TIteCar.Open;
             vnSeqAtu := Dm1.CadUsu_TIteCarUSU_SEQITE.Value;

             Dm1.CadUsu_TIteCar.Edit;
             Dm1.CadUsu_TIteCarUSU_SEQITE.Value := vnSeqAtu - 1;
             Dm1.CadUsu_TIteCar.Post;

             Dm1.ConsUsu_TIteCar.Prior;
             Dm1.CadUsu_TIteCar.Close;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TIteCarUSU_PRECAR.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_TIteCarUSU_SEQITE.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('filped').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
             Dm1.CadUsu_TIteCar.Parameters.ParamByName('codrep').Value := Dm1.ConsUsu_TIteCarUSU_CODREP.Value;
             Dm1.CadUsu_TIteCar.Open;
             Dm1.CadUsu_TIteCar.Edit;
             Dm1.CadUsu_TIteCarUSU_SEQITE.Value := vnSeqAtu;
             Dm1.CadUsu_TIteCar.Post;

              //atualiza a consulta dos pedidos da pre-carga
             Dm1.ConsUsu_TIteCar.Close;
             Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
             Dm1.ConsUsu_TIteCar.Open;
             while Dm1.ConsUsu_TIteCarUSU_SEQITE.Value <> vnSeqAtu - 1 do
               begin
                   Dm1.ConsUsu_TIteCar.Next;
               end;

         end;
    end;
end;

procedure TFPreCarga.BDeceClick(Sender: TObject);
var vnSeqAtu : Integer;
begin
if not Dm1.ConsUsu_TIteCar.IsEmpty then
begin

UltimoUsu_SeqIte.Close;
UltimoUsu_SeqIte.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
UltimoUsu_SeqIte.Open;

  if Dm1.ConsUsu_TIteCarUSU_SEQITE.Value < UltimoUsu_SeqIteUSU_SEQITE.Value then
     begin//1
         Dm1.CadUsu_TIteCar.Close;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TIteCarUSU_PRECAR.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_TIteCarUSU_SEQITE.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('filped').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('codrep').Value := Dm1.ConsUsu_TIteCarUSU_CODREP.Value;
         Dm1.CadUsu_TIteCar.Open;
         vnSeqAtu := Dm1.CadUsu_TIteCarUSU_SEQITE.Value;

         Dm1.CadUsu_TIteCar.Edit;
         Dm1.CadUsu_TIteCarUSU_SEQITE.Value := vnSeqAtu + 1;
         Dm1.CadUsu_TIteCar.Post;

         Dm1.ConsUsu_TIteCar.Next;
         Dm1.CadUsu_TIteCar.Close;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('precar').Value := Dm1.ConsUsu_TIteCarUSU_PRECAR.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('seqite').Value := Dm1.ConsUsu_TIteCarUSU_SEQITE.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('filped').Value := Dm1.ConsUsu_TIteCarUSU_FILPED.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('numped').Value := Dm1.ConsUsu_TIteCarUSU_NUMPED.Value;
         Dm1.CadUsu_TIteCar.Parameters.ParamByName('codrep').Value := Dm1.ConsUsu_TIteCarUSU_CODREP.Value;
         Dm1.CadUsu_TIteCar.Open;
         Dm1.CadUsu_TIteCar.Edit;
         Dm1.CadUsu_TIteCarUSU_SEQITE.Value := vnSeqAtu;
         Dm1.CadUsu_TIteCar.Post;

          //atualiza a consulta dos pedidos da pre-carga
         Dm1.ConsUsu_TIteCar.Close;
         Dm1.ConsUsu_TIteCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
         Dm1.ConsUsu_TIteCar.Open;
         while Dm1.ConsUsu_TIteCarUSU_SEQITE.Value <> vnSeqAtu + 1 do
           begin
               Dm1.ConsUsu_TIteCar.Next;
           end;

     end;//1
end;   
end;

procedure TFPreCarga.BExcluirClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Realmente Excluir o Registro?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
begin
  if not Dm1.ConsUsu_TIteCar.IsEmpty then
     begin//1
       Application.MessageBox('Existe pedidos relacionados a esta Pré-Carga','Aviso', MB_ICONWARNING+MB_OK);

     end//1
  else
     begin//2
         Dm1.CadUsu_TPreCar.Close;
         Dm1.CadUsu_TPreCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
         Dm1.CadUsu_TPreCar.Open;
         Dm1.CadUsu_TPreCar.Delete;
         Application.MessageBox('Pré-Carga excluída com sucesso','Aviso', MB_ICONWARNING+MB_OK);
         EdPreCarga.Clear;
     end;//2
end;
end;

procedure TFPreCarga.BitBtn1Click(Sender: TObject);
var Hora : string;
begin
if EdPreCarga.Text <> '' then
    begin//1
      Dm1.CadUsu_TPreCar.Close;
      Dm1.CadUsu_TPreCar.Parameters.ParamByName('precar').Value := StrToInt(EdPreCarga.Text);
      Dm1.CadUsu_TPreCar.Open;
      if Dm1.CadUsu_TPreCarUSU_CARLIB.Value = 'S' then
         begin//2
                      Dm1.CadUsu_TPreCar.Edit;
                      Dm1.CadUsu_TPreCarUSU_CARLIB.Value := 'N';
                      Dm1.CadUsu_TPreCarUSU_DATLIB.Value := Date;
                      Dm1.CadUsu_TPreCarUSU_USULIB.Value := FPrincipal.cd_usuario;
                      Hora := TimeToStr(Time);
                      Dm1.CadUsu_TPreCarUSU_HORLIB.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
                      Dm1.CadUsu_TPreCar.Post;

                      LLiberado.Caption := 'NÃO';
                      LLiberado.Font.Color := clRed;
         end;//2
    end;//1
end;

procedure TFPreCarga.TbConsultaShow(Sender: TObject);
begin
    ConsUsuTPreCarNLib.Close;
    ConsUsuTPreCarNLib.Open;
end;

procedure TFPreCarga.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    //GRID ZEBRADA
    if odd(Dm1.ConsUsu_TIteCar.RecNo) then
    DBGrid1.Canvas.Brush.Color:= clmenubar
    else
    DBGrid1.Canvas.Brush.Color:= clCream;

    TDbGrid(Sender).Canvas.font.Color:= clBlack;
    //MUDA A COR QUANDO A LINHA ESTIVER SELECIONADA
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
    Brush.Color := clSkyBlue;
    FillRect(Rect);
    Font.Style := [fsbold]
    end;

    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TFPreCarga.DBGrid2DblClick(Sender: TObject);
begin
    PaginaControle.ActivePage := TbCadastro;
    EdPreCarga.Text := IntToStr(ConsUsuTPreCarNLibUSU_PRECAR.Value);
    EdPreCargaExit(Sender);
end;

procedure TFPreCarga.SpeedButton1Click(Sender: TObject);
var vnPreCar : Integer;
begin
  if EdPreCarga.Text <> '' then
   begin
      vnPreCar := StrToInt(EdPreCarga.Text) + 1;
      ValidaPreCarga.Close;
      ValidaPreCarga.Parameters.ParamByName('precar').Value := vnPreCar;
      ValidaPreCarga.Open;
      if not ValidaPreCarga.IsEmpty then
         begin
            EdPreCarga.Text := IntToStr(vnPreCar);
            EdPreCargaExit(Sender);
         end;
   end;
end;

procedure TFPreCarga.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFPreCarga.SpeedButton2Click(Sender: TObject);
var vnPreCar : Integer;
begin
  if EdPreCarga.Text <> '' then
   begin
      vnPreCar := StrToInt(EdPreCarga.Text) - 1;
      ValidaPreCarga.Close;
      ValidaPreCarga.Parameters.ParamByName('precar').Value := vnPreCar;
      ValidaPreCarga.Open;
      if not ValidaPreCarga.IsEmpty then
         begin
            EdPreCarga.Text := IntToStr(vnPreCar);
            EdPreCargaExit(Sender);
         end;
   end;

end;

procedure TFPreCarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPrincipal.ApagaTela(FPreCarga.Name,FPrincipal.vnCodCon);
end;

end.
