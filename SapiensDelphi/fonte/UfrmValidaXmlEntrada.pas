unit UfrmValidaXmlEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, DB, DBClient, Provider, Xmlxform, FileCtrl, StdCtrls, Buttons, ShellApi,
  ADODB, Grids, DBGrids;

type
  TfrmValidaXmlEntrada = class(TForm)
    XmlProvider: TXMLTransformProvider;
    ClientDadosGerais: TClientDataSet;
    btnSelecionarPasta: TBitBtn;
    edtCaminhoPasta: TEdit;
    btnValidar: TBitBtn;
    mmoHistorico: TMemo;
    BuscaE440Nfc: TADOQuery;
    BuscaE440NfcCODEMP: TIntegerField;
    BuscaE440NfcCODFIL: TIntegerField;
    BuscaE440NfcCODFOR: TIntegerField;
    BuscaE440NfcNUMNFC: TIntegerField;
    BuscaE440NfcCODSNF: TStringField;
    BuscaE440NfcTIPNFE: TIntegerField;
    BuscaE440NfcDATENT: TDateTimeField;
    BuscaE440NfcDATEMI: TDateTimeField;
    BuscaE440NfcTNSPRO: TStringField;
    BuscaE440NfcNOMFOR: TStringField;
    BuscaE440NfcCGCCPF: TBCDField;
    btnSalvar: TBitBtn;
    procedure btnSelecionarPastaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    selDir : string;
  public
    { Public declarations }
  end;

var
  frmValidaXmlEntrada: TfrmValidaXmlEntrada;

implementation

{$R *.dfm}

procedure TfrmValidaXmlEntrada.btnSalvarClick(Sender: TObject);
var vaData,vaHora : string;
begin
  vaData := Copy(DateToStr(Date),1,2)+'-'+Copy(DateToStr(Date),4,2)+'-'+Copy(DateToStr(Date),7,4);
  vaHora := Copy(TimeToStr(Time),1,2)+'-'+Copy(TimeToStr(Time),4,2)+'-'+Copy(TimeToStr(Time),7,2);
  mmoHistorico.Lines.SaveToFile('\\servervm-pc\DriverZ\MARA\xml EAuditoria\Log\'+vaData+'  '+vaHora+'.txt');
end;

procedure TfrmValidaXmlEntrada.btnSelecionarPastaClick(Sender: TObject);
begin
if SelectDirectory('Selecione uma pasta', '\\servervm-pc\DriverZ\MARA\xml EAuditoria\', selDir) then
   begin
     edtCaminhoPasta.Text := selDir+'\';
   end;
end;

procedure TfrmValidaXmlEntrada.btnValidarClick(Sender: TObject);
var vaCaminho, vaArquivo : string;
    SR : TSearchRec;
begin
  mmoHistorico.Clear;
  vaCaminho := edtCaminhoPasta.Text +'*.xml*';

  //percorre os arquivos
  if FindFirst(vaCaminho,faAnyFile,SR) = 0 then
     begin
        repeat
           TRY
             ClientDadosGerais.Close;
             vaArquivo := edtCaminhoPasta.Text+SR.Name;
             XmlProvider.XMLDataFile := vaArquivo;
             ClientDadosGerais.Open;
           EXCEPT
             ShowMessage(vaArquivo);
           END;

           BuscaE440Nfc.Close;
           BuscaE440Nfc.Parameters.ParamByName('numnfc').Value := ClientDadosGerais.FieldByName('nNF').Value;
           BuscaE440Nfc.Parameters.ParamByName('cgccpf').Value := ClientDadosGerais.FieldByName('CNPJ').Value;
           BuscaE440Nfc.Open;
           if BuscaE440Nfc.IsEmpty then
              begin
                mmoHistorico.Lines.Add('NFE='+ClientDadosGerais.FieldByName('nNF').AsString+
                                      '    RAZAO='+ClientDadosGerais.FieldByName('xNome').AsString+
                                   //   '   EMISSAO='+ClientDadosGerais.FieldByName('vNF').AsString+
                                      '    NAT_OPE='+ClientDadosGerais.FieldByName('natOp').AsString);
              end;

        until FindNext(SR) <> 0;
         FindClose(SR);
     end;

end;

procedure TfrmValidaXmlEntrada.FormShow(Sender: TObject);
begin
selDir := '';
end;

end.
