unit UDataModule6;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery;

type
  TDataModule6 = class(TDataModule)
    IBDShowTecidos: TIBDataSet;
    IBDShowTecidosCD_TECIDO: TIntegerField;
    IBDShowTecidosCD_GRUPO: TIntegerField;
    IBDShowTecidosIMAGEM_PEQ: TIBStringField;
    IBDShowTecidosIMAGEM_GRANDE: TIBStringField;
    IBDShowTecidosNM_IMAGEM_PEQ: TIBStringField;
    IBDShowTecidosNM_IMAGEM_GRANDE: TIBStringField;
    IBDShowTecidosDT_CADASTRO: TDateField;
    IBDShowTecidosUSUARIOO: TIBStringField;
    IBDShowTecidosSITUACAO: TIBStringField;
    IBQExisteTecido: TIBQuery;
    IBQExisteTecidoCD_TECIDO: TIntegerField;
    IBQExisteMtPrima: TIBQuery;
    IBQExisteMtPrimaCD_MAT_PRIMA: TIntegerField;
    IBQConsShowTecido: TIBQuery;
    IBQConsShowTecidoCD_TECIDO: TIntegerField;
    IBQConsShowTecidoCD_GRUPO: TIntegerField;
    IBQConsShowTecidoIMAGEM_PEQ: TIBStringField;
    IBQConsShowTecidoIMAGEM_GRANDE: TIBStringField;
    IBQConsShowTecidoNM_IMAGEM_PEQ: TIBStringField;
    IBQConsShowTecidoNM_IMAGEM_GRANDE: TIBStringField;
    IBQConsShowTecidoDT_CADASTRO: TDateField;
    IBQConsShowTecidoUSUARIOO: TIBStringField;
    IBQConsShowTecidoSITUACAO: TIBStringField;
    IBQConsShowTecidoDS_GRUPO: TIBStringField;
    IBDShowProdutos: TIBDataSet;
    IBDShowProdutosCD_PRODUTO: TIntegerField;
    IBDShowProdutosCD_LINHA: TIntegerField;
    IBDShowProdutosIMAGEM_PEQ: TIBStringField;
    IBDShowProdutosIMAGEM_GRANDE: TIBStringField;
    IBDShowProdutosNM_IMAGEM_PEQ: TIBStringField;
    IBDShowProdutosNM_IMAGEM_GRANDE: TIBStringField;
    IBDShowProdutosDT_CADASTRO: TDateField;
    IBDShowProdutosUSUARIOO: TIBStringField;
    IBDShowProdutosSITUACAO: TIBStringField;
    IBQExisteProduto: TIBQuery;
    IBQExisteProdCadastrado: TIBQuery;
    IBQExisteProdutoCD_PRODUTO: TIntegerField;
    IBQExisteProdCadastradoCD_PRODUTO: TIntegerField;
    IBQExisteProdCadastradoDS_PRODUTO: TIBStringField;
    IBQConsShowProdutos: TIBQuery;
    IBQConsShowProdutosCD_PRODUTO: TIntegerField;
    IBQConsShowProdutosCD_LINHA: TIntegerField;
    IBQConsShowProdutosIMAGEM_PEQ: TIBStringField;
    IBQConsShowProdutosIMAGEM_GRANDE: TIBStringField;
    IBQConsShowProdutosNM_IMAGEM_PEQ: TIBStringField;
    IBQConsShowProdutosNM_IMAGEM_GRANDE: TIBStringField;
    IBQConsShowProdutosDT_CADASTRO: TDateField;
    IBQConsShowProdutosUSUARIOO: TIBStringField;
    IBQConsShowProdutosSITUACAO: TIBStringField;
    IBQConsShowProdutosDS_LINHA: TIBStringField;
    IBQConsShowProdutosDS_PRODUTO: TIBStringField;
    IBQConsFaleConosco: TIBQuery;
    IBQConsFaleConoscoCD_MENSAGEM: TIntegerField;
    IBQConsFaleConoscoMENSAGEM: TIBStringField;
    IBQConsFaleConoscoNOME: TIBStringField;
    IBQConsFaleConoscoTELEFONE: TIBStringField;
    IBQConsFaleConoscoEMAIL: TIBStringField;
    IBQConsFaleConoscoDT_MENSAGEM: TDateField;
    IBQConsFaleConoscoSITUACAO: TIBStringField;
    IBQConsFaleConoscoABERTA_POR: TIntegerField;
    IBQConsFaleConoscoNM_USUARIO: TIBStringField;
    IBDFaleConosco: TIBDataSet;
    IBDFaleConoscoCD_MENSAGEM: TIntegerField;
    IBDFaleConoscoMENSAGEM: TIBStringField;
    IBDFaleConoscoNOME: TIBStringField;
    IBDFaleConoscoTELEFONE: TIBStringField;
    IBDFaleConoscoEMAIL: TIBStringField;
    IBDFaleConoscoDT_MENSAGEM: TDateField;
    IBDFaleConoscoSITUACAO: TIBStringField;
    IBDFaleConoscoABERTA_POR: TIntegerField;
    IBDLoginErrado: TIBDataSet;
    IBDLoginErradoCD_LOGIN: TIntegerField;
    IBDLoginErradoLOGIN: TIBStringField;
    IBDLoginErradoSENHA: TIBStringField;
    IBDLoginErradoDT_LOGIN: TDateField;
    IBDLoginErradoHR_LOGIN: TTimeField;
    IBQConsLoginErrado: TIBQuery;
    IBQConsLoginErradoCD_LOGIN: TIntegerField;
    IBQConsLoginErradoLOGIN: TIBStringField;
    IBQConsLoginErradoSENHA: TIBStringField;
    IBQConsLoginErradoDT_LOGIN: TDateField;
    IBQConsLoginErradoHR_LOGIN: TTimeField;
    IBDAcessosUsuario: TIBDataSet;
    IBDAcessosUsuarioCD_ACESSO: TIntegerField;
    IBDAcessosUsuarioCD_USUARIO: TIntegerField;
    IBDAcessosUsuarioDT_ACESSO: TDateField;
    IBDAcessosUsuarioHR_ACESSO: TTimeField;
    IBQConsAcessosUsu: TIBQuery;
    IBQConsAcessosUsuCD_ACESSO: TIntegerField;
    IBQConsAcessosUsuCD_USUARIO: TIntegerField;
    IBQConsAcessosUsuDT_ACESSO: TDateField;
    IBQConsAcessosUsuHR_ACESSO: TTimeField;
    IBQConsAcessosUsuNM_USUARIO: TIBStringField;
    IBQUltimoAcesso: TIBQuery;
    IBQUltimoAcessoCD_ACESSO: TIntegerField;
    IBQUltimoAcessoCD_USUARIO: TIntegerField;
    IBQUltimoAcessoDT_ACESSO: TDateField;
    IBQUltimoAcessoHR_ACESSO: TTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule6: TDataModule6;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TDataModule6.DataModuleCreate(Sender: TObject);
var i : Integer;
begin
  for i := 0 to ComponentCount - 1 do
          begin
            if Components[i] is TIBDataSet then
              begin
                 TIBDataSet(Components[i]).Active := true;;
              end;
          end;
end;

end.
