unit UDiferencaCorteTecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, ComCtrls, rxToolEdit, RXDBCtrl,
  Buttons, rxCurrEdit;

type
  TFDiferencaCorteTecido = class(TForm)
    CadUsu_TDifTec: TADOQuery;
    CadUsu_TDifTecUSU_CODEMP: TIntegerField;
    CadUsu_TDifTecUSU_CODFIL: TIntegerField;
    CadUsu_TDifTecUSU_NUMANE: TIntegerField;
    CadUsu_TDifTecUSU_SEQMOV: TIntegerField;
    CadUsu_TDifTecUSU_CODPRO: TStringField;
    CadUsu_TDifTecUSU_QTDMOV: TBCDField;
    CadUsu_TDifTecUSU_DATMOV: TDateTimeField;
    CadUsu_TDifTecUSU_SEQLOG: TIntegerField;
    CadUsu_TDifTecUSU_CODPROLOG: TStringField;
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    DsCadUsu_TDifTec: TDataSource;
    Label3: TLabel;
    EdNumAne: TDBEdit;
    Label5: TLabel;
    EdCodPro: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    EdDatMov: TDBDateEdit;
    BProcessa: TBitBtn;
    BExcluir: TBitBtn;
    TbConsulta: TTabSheet;
    BNovo: TBitBtn;
    BCancela: TBitBtn;
    ConsSeqUsu_TDiTec: TADOQuery;
    ConsSeqUsu_TDiTecUSU_SEQMOV: TIntegerField;
    EdQtdMov: TCurrencyEdit;
    ValidaTecido: TADOQuery;
    ValidaTecidoCODPRO: TStringField;
    ValidaTecidoSITPRO: TStringField;
    ValidaCarga: TADOQuery;
    ValidaCargaUSU_NUMANE: TIntegerField;
    ValidaCargaUSU_DATIMP: TDateTimeField;
    ValidaCargaUSU_HORIMP: TIntegerField;
    ValidaCargaUSU_USUIMP: TIntegerField;
    ValidaCargaUSU_CARPRO: TStringField;
    CadUsu_TDifTecUSU_MOTMOV: TStringField;
    Label1: TLabel;
    CbMotMov: TComboBox;
    procedure BNovoClick(Sender: TObject);
    procedure DsCadUsu_TDifTecStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelaClick(Sender: TObject);
    procedure CadUsu_TDifTecBeforePost(DataSet: TDataSet);
    procedure BProcessaClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdNumAneExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDiferencaCorteTecido: TFDiferencaCorteTecido;

implementation

uses UDm, UDm1;



{$R *.dfm}

procedure TFDiferencaCorteTecido.BCancelaClick(Sender: TObject);
begin
    CadUsu_TDifTec.Cancel;
    EdQtdMov.Clear;
end;

procedure TFDiferencaCorteTecido.BNovoClick(Sender: TObject);
begin
    CadUsu_TDifTec.Open;
    CadUsu_TDifTec.Insert;
    EdQtdMov.Clear;
    ActiveControl := EdNumAne;

end;

procedure TFDiferencaCorteTecido.BProcessaClick(Sender: TObject);
var vnseqLog : integer;
begin
 if trim(EdNumAne.Text) = '' then
    begin
      MessageDlg('Informe o Numero da Carga',mtWarning,[mbOK],0);
      ActiveControl := EdNumAne;
    end
 else
  if trim(EdCodPro.Text) = ''then
     begin
       MessageDlg('Informe o Tecido',mtWarning,[mbOK],0);
       ActiveControl := EdCodPro;
     end
  else
    if trim(EdQtdMov.Text) = ''then
       begin
         MessageDlg('Informe a Quantidade',mtWarning,[mbOK],0);
         ActiveControl := EdCodPro;
       end
    else
      if trim(CbMotMov.Text) = ''then
       begin
         MessageDlg('Informe o motivo',mtWarning,[mbOK],0);
         ActiveControl := CbMotMov;
       end
    else
       begin
          CadUsu_TDifTecUSU_MOTMOV.Value := trim(CbMotMov.Text);
          CadUsu_TDifTec.Post;

          //grava o logue para dar baixa do tecido
          Dm1.SeqUsu_TLogBax.Close;
          Dm1.SeqUsu_TLogBax.Parameters.ParamByName('codpro').Value := CadUsu_TDifTecUSU_CODPRO.Value;
          Dm1.SeqUsu_TLogBax.Open;
          if Dm1.SeqUsu_TLogBax.IsEmpty then
             vnSeqLog := 1
          else
             vnSeqLog := Dm1.SeqUsu_TLogBaxUSU_SEQLOG.Value + 1;
          Dm1.CadUsu_TLogBax.Open;
          Dm1.CadUsu_TLogBax.Insert;
          Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value := vnSeqLog;
          Dm1.CadUsu_TLogBaxUSU_CODPRO.Value := CadUsu_TDifTecUSU_CODPRO.Value;
          Dm1.CadUsu_TLogBaxUSU_QTDMOV.Value := CadUsu_TDifTecUSU_QTDMOV.Value;
          Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'A';
          Dm1.CadUsu_TLogBaxUSU_TIPMOV.Value := 'S';
          Dm1.CadUsu_TLogBaxUSU_MOTMOV.Value := CadUsu_TDifTecUSU_MOTMOV.Value;
          Dm1.CadUsu_TLogBax.Post;

          //atualiza com a sequencia do log
          CadUsu_TDifTec.Edit;
          CadUsu_TDifTecUSU_SEQLOG.Value :=  Dm1.CadUsu_TLogBaxUSU_SEQLOG.Value;
          CadUsu_TDifTecUSU_CODPROLOG.Value := Dm1.CadUsu_TLogBaxUSU_CODPRO.Value;
          CadUsu_TDifTec.Post;

          ActiveControl := BNovo;
       end;
end;

procedure TFDiferencaCorteTecido.CadUsu_TDifTecBeforePost(DataSet: TDataSet);
begin
    if CadUsu_TDifTec.State in [dsinsert] then
       begin
         ConsSeqUsu_TDiTec.Close;
         ConsSeqUsu_TDiTec.Open;
         if ConsSeqUsu_TDiTec.IsEmpty  then
            CadUsu_TDifTecUSU_SEQMOV.Value := 1
         else
            CadUsu_TDifTecUSU_SEQMOV.Value := ConsSeqUsu_TDiTecUSU_SEQMOV.Value + 1;

        CadUsu_TDifTecUSU_CODEMP.Value := 1;
        CadUsu_TDifTecUSU_CODFIL.Value := 1;
        CadUsu_TDifTecUSU_DATMOV.Value := Date;
        CadUsu_TDifTecUSU_QTDMOV.Value := EdQtdMov.Value;
       end;
end;

procedure TFDiferencaCorteTecido.DsCadUsu_TDifTecStateChange(Sender: TObject);
begin
    if CadUsu_TDifTec.State in [dsinsert] then
       begin
          BNovo.Enabled := false;
          BExcluir.Enabled := false;
          BProcessa.Enabled := true;
          BCancela.Enabled := true;
       end
    else
       begin
          BNovo.Enabled := true;
          BExcluir.Enabled := true;
          BProcessa.Enabled := false;
          BCancela.Enabled := false;
       end;
end;

procedure TFDiferencaCorteTecido.EdCodProExit(Sender: TObject);
begin
    if trim(EdCodPro.Text) <> '' then
       begin
         ValidaTecido.Close;
         ValidaTecido.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
         ValidaTecido.Open;
         if ValidaTecido.IsEmpty then
            begin
               MessageDlg('Tecido Não Encontrado',mtWarning,[mbOK],0);
               EdCodPro.Clear;
               ActiveControl := EdCodPro;
            end
         else
            begin
              if ValidaTecidoSITPRO.Value = 'I' then
                 begin
                   MessageDlg('Tecido Inativo',mtWarning,[mbOK],0);
                   EdCodPro.Clear;
                   ActiveControl := EdCodPro;
                 end;
            end;

       end;
end;

procedure TFDiferencaCorteTecido.EdNumAneExit(Sender: TObject);
begin
    if trim(EdNumAne.Text) <> '' then
       begin
          ValidaCarga.Close;
          ValidaCarga.Parameters.ParamByName('numane').Value := StrToInt(trim(EdNumAne.Text));
          ValidaCarga.Open;
          if ValidaCarga.IsEmpty then
             begin
               MessageDlg('Carga não encontrada',mtWarning,[mbOK],0);
               ActiveControl := EdNumAne;
               EdNumAne.Clear;
             end;

       end;
end;

procedure TFDiferencaCorteTecido.FormActivate(Sender: TObject);
begin
  CadUsu_TDifTec.Close;
  CadUsu_TDifTec.Open;
  ActiveControl := BNovo;
end;

procedure TFDiferencaCorteTecido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.



