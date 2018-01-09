unit UConsSimpPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton, Mask, ToolEdit;

type
  TFConsSimpPedido = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    Data1: TDateEdit;
    Data2: TDateEdit;
    BPesqDiversas: TSpeedButton;
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure BPesqDiversasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsSimpPedido: TFConsSimpPedido;

implementation

uses UDataModule1, UDataModule3, UConsSimpCidade, UConsSimpPJuridica;

{$R *.dfm}

procedure TFConsSimpPedido.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
Data1.Clear;
Data2.Clear;
DataModule3.IBQConsSimpPedido.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      //LDescricaoPesquisa.Caption := 'Geral';
      BPesqDiversas.Caption := 'Cliente';
      BPesqDiversas.Visible := true;
      BPesquisa.Left := 544;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := true;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      //LDescricaoPesquisa.Caption := 'Código';
      BPesqDiversas.Caption := 'Representante';
      BPesqDiversas.Visible := true;
      BPesquisa.Left := 544;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := true;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;

    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         //LDescricaoPesquisa.Caption := 'Descrição';
      BPesqDiversas.Caption := 'Cidade';
      BPesqDiversas.Visible := true;
      BPesquisa.Left := 544;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := true;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;
    end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
      BPesqDiversas.Caption := '';
      BPesqDiversas.Visible := false;
      BPesquisa.Left := 320;

      EdPesquisa.Top := 0;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 40;
      Data1.Left := 192;
      Data1.Visible := true;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;
    end
  else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
      BPesqDiversas.Caption := '';
      BPesqDiversas.Visible := false;
      BPesquisa.Left := 456;

      EdPesquisa.Top := 0;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 40;
      Data1.Left := 192;
      Data1.Visible := true;

      Data2.Top := 40;
      Data2.Left := 328;
      Data2.Visible := true;
    end;
end;

procedure TFConsSimpPedido.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
{if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;}
end;

procedure TFConsSimpPedido.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     BCancelar.Click;
  end;
end;

procedure TFConsSimpPedido.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpPedido.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

procedure TFConsSimpPedido.BPesquisaClick(Sender: TObject);
begin
    DataModule3.IBQConsSimpPedido.Close;
    DataModule3.IBQConsSimpPedido.SQL.Clear;
    DataModule3.IBQConsSimpPedido.SQL.Add('select ped.cd_pedido as cd_pedido, ped.cd_pessoa_ju as cd_cliente, ped.dt_pedido,');
    DataModule3.IBQConsSimpPedido.SQL.Add('ped.situacao, ped.modelo, ped.cd_pessoa_usu as cd_usuario_ju,ped.dt_sistema,ped.hr_pedido,');
    DataModule3.IBQConsSimpPedido.SQL.Add('pes.rua, pes.bairro, pes.cep, pes.complemento,');
    DataModule3.IBQConsSimpPedido.SQL.Add('pj.rz_social, pj.cgc,');
    DataModule3.IBQConsSimpPedido.SQL.Add('cid.nm_cidade, cid.sigla_uf,');
    DataModule3.IBQConsSimpPedido.SQL.Add('pgto.ds_cond_pgto,');
    DataModule3.IBQConsSimpPedido.SQL.Add('tp_cob.ds_tipo_cobranca');
    DataModule3.IBQConsSimpPedido.SQL.Add('from PEDIDO ped');
    DataModule3.IBQConsSimpPedido.SQL.Add('inner join PESSOA_JURIDICA pj on ped.cd_pessoa_ju = pj.cd_pessoa_ju');
    DataModule3.IBQConsSimpPedido.SQL.Add('inner join PESSOA pes on pj.cd_pessoa = pes.cd_pessoa');
    DataModule3.IBQConsSimpPedido.SQL.Add('inner join CIDADE cid on pes.cd_cidade = cid.cd_cidade');
    DataModule3.IBQConsSimpPedido.SQL.Add('inner join CONDICAO_PGTO pgto on ped.cd_cond_pgto = pgto.cd_cond_pgto');
    DataModule3.IBQConsSimpPedido.SQL.Add('inner join TIPO_COBRANCA tp_cob on tp_cob.cd_tipo_cobranca = ped.cd_tipo_cobranca');
    DataModule3.IBQConsSimpPedido.SQL.Add('inner join PESSOA_JURIDICA pju on pju.cd_pessoa_ju = ped.cd_pessoa_usu');
    DataModule3.IBQConsSimpPedido.SQL.Add('where');

    if FiltroPesquisa.ItemIndex = 0 then
      begin
        DataModule3.IBQConsSimpPedido.SQL.Add('pj.rz_social LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      end
    else
   if FiltroPesquisa.ItemIndex = 1 then
    begin
       DataModule3.IBQConsSimpPedido.SQL.Add('pju.rz_social LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    end
   else
  if FiltroPesquisa.ItemIndex = 2 then
    begin
      DataModule3.IBQConsSimpPedido.SQL.Add('cid.nm_cidade LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    end
   else
  if FiltroPesquisa.ItemIndex = 3 then
    begin
      DataModule3.IBQConsSimpPedido.SQL.Add('ped.dt_pedido = :pdata');
      DataModule3.IBQConsSimpPedido.ParamByName('pdata').AsDate := Data1.Date;
    end
   else
  if FiltroPesquisa.ItemIndex = 4 then
    begin
      DataModule3.IBQConsSimpPedido.SQL.Add('ped.dt_pedido between :pdata1 and :pdata2');
      DataModule3.IBQConsSimpPedido.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule3.IBQConsSimpPedido.ParamByName('pdata2').AsDate := Data2.Date;
    end;

    DataModule3.IBQConsSimpPedido.Open;

end;

procedure TFConsSimpPedido.BPesqDiversasClick(Sender: TObject);
begin
  if FiltroPesquisa.ItemIndex = 2 then
    begin
      FConsSimpCidade := TFConsSimpCidade.Create(Self);
      if FConsSimpCidade.ShowModal = mrOk then
        begin
          EdPesquisa.Text := DataModule1.IBQConsultaCidadeNM_CIDADE.AsString;
        end;
      FreeAndNil(FConsSimpCidade);
    end
  else
  if (FiltroPesquisa.ItemIndex = 0)or(FiltroPesquisa.ItemIndex = 1) then
    begin
      FConsSimpPJuridica := TFConsSimpPJuridica.Create(Self);
      if FConsSimpPJuridica.ShowModal = mrOk then
        begin
          EdPesquisa.Text := DataModule3.IBQGeralPessoaRZ_SOCIAL.AsString;
        end;
      FreeAndNil(FConsSimpPJuridica);
    end;
end;

end.
