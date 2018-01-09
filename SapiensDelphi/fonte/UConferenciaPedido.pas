unit UConferenciaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ComCtrls, ExtCtrls, RXDBCtrl, StdCtrls,
  DBCtrls, Buttons, RbDrawCore, RbButton, Mask, rxToolEdit, rxCurrEdit;

type
  TFConferenciaPedido = class(TForm)
    PaginaControle: TPageControl;
    TbResumoPedidos: TTabSheet;
    DBEGrid: TDBGrid;
    DSResumoPedidos: TDataSource;
    Timer1: TTimer;
    TbPedidosRecebidos: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PAtivo: TPanel;
    PBloqueado: TPanel;
    DBEGridPedidos: TRxDBGrid;
    LCdReg: TLabel;
    LDsReg: TLabel;
    LDsRzRepresentante: TLabel;
    DBEObservacao: TDBMemo;
    LCdCliente: TLabel;
    LDsCliente: TLabel;
    LDsCidade: TLabel;
    LUf: TLabel;
    DSPedidosUsuario: TDataSource;
    PAlerta: TPanel;
    BAlerta: TSpeedButton;
    BLiberaPedido: TRbButton;
    BDadosPedido: TRbButton;
    BImprimir: TRbButton;
    EdTotalPedidos: TCurrencyEdit;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TbPedidosRecebidosShow(Sender: TObject);
    procedure BAlertaClick(Sender: TObject);
    procedure BDadosPedidoClick(Sender: TObject);
    procedure BLiberaPedidoClick(Sender: TObject);
    procedure TbResumoPedidosShow(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConferenciaPedido: TFConferenciaPedido;

implementation

uses UDataModule1, UConsAlertas, UPedido, UPedidoCons, UDataModule3,
  UPrincipal, UQrPedidosRecebidos;

{$R *.dfm}

procedure TFConferenciaPedido.Timer1Timer(Sender: TObject);
var espera : string;
begin
{  espera := 'ESPERA';
  DataModule1.IBQConsPedEspera.Close;
  DataModule1.IBQConsPedEspera.ParamByName('psituacao').AsString := espera;
  DataModule1.IBQConsPedEspera.Open; }
  end;

procedure TFConferenciaPedido.FormShow(Sender: TObject);
begin


  PaginaControle.ActivePageIndex := 0;
  end;



procedure TFConferenciaPedido.TbPedidosRecebidosShow(Sender: TObject);
VAR situacao : string;
begin
  situacao := 'ESPERA';
  DataModule1.IBQConsPedUsuario.Close;
  DataModule1.IBQConsPedUsuario.ParamByName('pusuario').AsInteger :=
  DataModule1.IBQConsPedEsperaCD_PESSOA_JU.AsInteger;
  DataModule1.IBQConsPedUsuario.ParamByName('psituacao').AsString := situacao;
  DataModule1.IBQConsPedUsuario.Open;
  if DataModule1.IBQConsPedUsuario.IsEmpty then
    begin
      LCdReg.Caption := '';
      LDsReg.Caption := '';
      LDsRzRepresentante.Caption := '';
      LCdCliente.Caption :=  '';
      LDsCliente.Caption := '';
      LDsCidade.Caption := '';
      LUf.Caption := '';
      DBEObservacao.Color := clWhite;

      PAtivo.Color := clBtnFace;
      PAtivo.Caption := '';

      PBloqueado.Color := clBtnFace;
      PBloqueado.Caption := '';

      BAlerta.Enabled := False;
      BDadosPedido.Enabled := false;
      BLiberaPedido.Enabled := false;
      BImprimir.Enabled := false;
    end
  else
    begin
  BDadosPedido.Enabled := true;
  BLiberaPedido.Enabled := true;
  BImprimir.Enabled := true;

  LCdReg.Caption :=  IntToStr(DataModule1.IBQConsPedUsuarioCD_REGIAO1.AsInteger);
  LDsReg.Caption := DataModule1.IBQConsPedUsuarioDS_REGIAO.AsString;
  LDsRzRepresentante.Caption := DataModule1.IBQConsPedUsuarioRZ_SOCIAL1.AsString;
  LCdCliente.Caption :=  IntToStr(DataModule1.IBQConsPedUsuarioCD_PESSOA_JU.AsInteger);
  LDsCliente.Caption := DataModule1.IBQConsPedUsuarioRZ_SOCIAL.AsString;

 if DataModule1.IBQConsPedUsuarioOBSERVACOES.AsString <> '' then
  begin
    DBEObservacao.Color := $00FFFF80;
  end
 else
  begin
    DBEObservacao.Color := clWhite;
  end;

          if DataModule1.IBQConsPedUsuarioSITUACAO1.AsString = 'A' then
             begin
              PAtivo.Color := $003DDF20;
              PAtivo.Font.Color := clWhite;
              PAtivo.Caption := 'ATIVO';
             end
            else
              begin
                PAtivo.Color := clRed;
                PAtivo.Font.Color := clWhite;
                PAtivo.Caption := 'INATIVO';
              end;

              if DataModule1.IBQConsPedUsuarioBLOQUEADO.AsString = 'N' then
             begin
              PBloqueado.Color := $003DDF20;
              PBloqueado.Font.Color := clWhite;
              PBloqueado.Caption := 'LIBERADO';
             end
            else
              begin
                PBloqueado.Color := clRed;
                PBloqueado.Font.Color := clYellow;
                PBloqueado.Caption := 'BLOQUEADO';
              end;

          DataModule1.IBQConsAlertas.Close;
          DataModule1.IBQConsAlertas.ParamByName('ppessoa').AsInteger :=
          DataModule1.IBQConsPedUsuarioCD_PESSOA.AsInteger;
          DataModule1.IBQConsAlertas.Open;
          if not DataModule1.IBQConsAlertas.IsEmpty then
            begin
              PAlerta.Color := $00FFFF80;
              PAlerta.Caption := 'Alerta';
              BAlerta.Enabled := true;
            end
          else
            begin
               PAlerta.Color := clBtnFace;
              PAlerta.Caption := '';
              BAlerta.Enabled := false;
            end;
   end;
end;

procedure TFConferenciaPedido.BAlertaClick(Sender: TObject);
begin
Application.CreateForm(TFConsAlertas, FConsAlertas);
  FConsAlertas.Show;
end;

procedure TFConferenciaPedido.BDadosPedidoClick(Sender: TObject);
begin
 FPedido := TFPedido.Create(Self);
 FPedido.Show;
 //FPedido.EdPedido.Text := IntToStr(DataModule1.IBQConsPedUsuarioCD_PEDIDO.AsInteger);
 //FPedido.EdPedidoExit(Sender);

  {FPedidoCons := TFPedidoCons.Create(Self);
  FPedidoCons.Show;
  FPedidoCons.EdPedido.Text := IntToStr(DataModule1.IBQConsPedUsuarioCD_PEDIDO.AsInteger);
  FPedidoCons.EdPedidoExit(sender);}

end;

procedure TFConferenciaPedido.BLiberaPedidoClick(Sender: TObject);
var situacao : string;
begin
situacao := 'ESPERA';
  //consulta os podutos do pedido
  DataModule3.IBQConsProdutoPedido.Close;
  DataModule3.IBQConsProdutoPedido.ParamByName('ppedido').AsInteger :=
  DataModule1.IBQConsPedUsuarioCD_PEDIDO.AsInteger;
  DataModule3.IBQConsProdutoPedido.Open;

  DataModule3.IBQConsProdutoPedido.First;
  while not DataModule3.IBQConsProdutoPedido.Eof do
    begin

      //consulta a composicao dos produtos
      DataModule1.IBQConsComposicaoProduto.Close;
      DataModule1.IBQConsComposicaoProduto.ParamByName('pproduto').AsInteger :=
      DataModule3.IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
      DataModule1.IBQConsComposicaoProduto.Open;

      DataModule1.IBQConsComposicaoProduto.First;
      while not DataModule1.IBQConsComposicaoProduto.Eof do
        begin //2

          //se for o tecido 999 entra no laço pra dar baixa nos tecidos
          if DataModule1.IBQConsComposicaoProdutoCD_MAT_PRIMA.AsInteger = 999 then
            begin //1
              DataModule3.IBQConsCoresProd.Close;
              DataModule3.IBQConsCoresProd.ParamByName('ppedido').AsInteger :=
              DataModule1.IBQConsPedUsuarioCD_PEDIDO.AsInteger;
              DataModule3.IBQConsCoresProd.ParamByName('pproduto').AsInteger :=
              DataModule3.IBQConsProdutoPedidoCD_PRODUTO.AsInteger;
              DataModule3.IBQConsCoresProd.Open;

              DataModule3.IBQConsCoresProd.First;
              while not DataModule3.IBQConsCoresProd.Eof do
                begin
                  //executa a carteira com o codigo da cor da vez
                   DataModule3.IBDCarteira.Close;
                   DataModule3.IBDCarteira.ParamByName('pmateria').AsInteger :=
                   DataModule3.IBQConsCoresProdCOR.AsInteger;
                   DataModule3.IBDCarteira.Open;

                   DataModule3.IBDCarteira.Edit;
                   DataModule3.IBDCarteiraQTDE.AsFloat :=
                   DataModule3.IBDCarteiraQTDE.AsFloat +
                   (DataModule1.IBQConsComposicaoProdutoQTDE_MAT_PRIMA.AsFloat *
                   DataModule3.IBQConsCoresProdQTDE.AsInteger);
                   DataModule3.IBDCarteira.Post;

                  DataModule3.IBQConsCoresProd.Next;

                end;
            end;//1


            DataModule3.IBDCarteira.Close;
            DataModule3.IBDCarteira.ParamByName('pmateria').AsInteger :=
            DataModule1.IBQConsComposicaoProdutoCD_MAT_PRIMA.AsInteger;
            DataModule3.IBDCarteira.Open;


             if DataModule1.IBQConsComposicaoProdutoCD_MAT_PRIMA.AsInteger <> 999 then
             begin
            DataModule3.IBDCarteira.Edit;
            DataModule3.IBDCarteiraQTDE.AsFloat :=
            DataModule3.IBDCarteiraQTDE.AsFloat +
            (DataModule1.IBQConsComposicaoProdutoQTDE_MAT_PRIMA.AsFloat *
            DataModule3.IBQConsProdutoPedidoQTDE_PRODUTO.AsInteger);
            DataModule3.IBDCarteira.Post;
            end;
            DataModule1.IBQConsComposicaoProduto.Next;

          end;//2


        DataModule3.IBQConsProdutoPedido.Next;

    end;
     DataModule3.IBDPedido.Close;
     DataModule3.IBDPedido.ParamByName('ppedido').AsInteger :=
     DataModule1.IBQConsPedUsuarioCD_PEDIDO.AsInteger;
     DataModule3.IBDPedido.Open;
     DataModule3.IBDPedido.Edit;
     DataModule3.IBDPedidoSITUACAO.AsString := 'LIBERADO';
     DataModule3.IBDPedido.Post;

     DataModule1.IBTTransacao.CommitRetaining;

     DataModule1.IBQConsPedUsuario.Close;
     DataModule1.IBQConsPedUsuario.ParamByName('pusuario').AsInteger :=
    DataModule1.IBQConsPedEsperaCD_PESSOA_JU.AsInteger;
    DataModule1.IBQConsPedUsuario.ParamByName('psituacao').AsString := situacao;
    DataModule1.IBQConsPedUsuario.Open;

    if DataModule1.IBQConsPedUsuario.IsEmpty then
      begin
      LCdReg.Caption := '';
      LDsReg.Caption := '';
      LDsRzRepresentante.Caption := '';
      LCdCliente.Caption :=  '';
      LDsCliente.Caption := '';
      LDsCidade.Caption := '';
      LUf.Caption := '';
      DBEObservacao.Color := clWhite;

      PAtivo.Color := clBtnFace;
      PAtivo.Caption := '';

      PBloqueado.Color := clBtnFace;
      PBloqueado.Caption := '';

      BAlerta.Enabled := False;
      BDadosPedido.Enabled := false;
      BLiberaPedido.Enabled := false;
      BImprimir.Enabled := false;
           
      end;

end;

procedure TFConferenciaPedido.TbResumoPedidosShow(Sender: TObject);
var espera : string;
    total_pedidos : Real;
begin
espera := 'ESPERA';
  DataModule1.IBQConsPedEspera.Close;
  DataModule1.IBQConsPedEspera.ParamByName('psituacao').AsString := espera;
  DataModule1.IBQConsPedEspera.Open;

  total_pedidos := 0;
  DataModule1.IBQConsPedEspera.First;
   while not DataModule1.IBQConsPedEspera.Eof do
    begin
      total_pedidos := total_pedidos + DataModule1.IBQConsPedEsperaVL_TOT.AsFloat;
      DataModule1.IBQConsPedEspera.Next;
    end;
    EdTotalPedidos.Text := FloatToStr(total_pedidos);
    


end;

procedure TFConferenciaPedido.BImprimirClick(Sender: TObject);
begin
QrPedidosRecebidos.LCdRepresentante.Caption := IntToStr(DataModule1.IBQConsPedUsuarioCD_PESSOA_USU.AsInteger);
QrPedidosRecebidos.LRepresentante.Caption := LDsRzRepresentante.Caption;
QrPedidosRecebidos.Preview;
end;

procedure TFConferenciaPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
     Close;
  end;
end;

end.
