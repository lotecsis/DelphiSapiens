unit UConsSimpFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpFornecedor = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdPesquisaExit(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsSimpFornecedor: TFConsSimpFornecedor;
  f : string;
implementation

uses UDataModule1, UDataModule2;

{$R *.dfm}

procedure TFConsSimpFornecedor.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsClasse.Close;
if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Raz�o Social';
      EdPesquisa.MaxLength := 100;
      EdPesquisa.ReadOnly := false;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Fantasia';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 100;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'C.G.C';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         //DataModule2.IBQConsGeralPessoa.FieldByName('CGC').EditMask := '##.###.###/####-##;0';
      end
    else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Cidade';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
    else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Contido na Raz�o Social';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
      else
    if FiltroPesquisa.ItemIndex = 5 then
      begin
         LDescricaoPesquisa.Caption := 'Contido na Fantasia';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpFornecedor.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpFornecedor.BPesquisaClick(Sender: TObject);
begin
f := 'F';

if (FiltroPesquisa.ItemIndex = 0) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cli_for = :pfornecedor and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.rz_social = :psocial order by p.cd_pessoa');
    DataModule2.IBQConsGeralPessoa.ParamByName('psocial').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.ParamByName('pfornecedor').AsString := f;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
  else
   if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cli_for = :pfornecedor and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.nm_fantazia = :pfantasia order by p.cd_pessoa');
    DataModule2.IBQConsGeralPessoa.ParamByName('pfantasia').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.ParamByName('pfornecedor').AsString := f;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cli_for = :pfornecedor and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cgc = :pcgc');
    DataModule2.IBQConsGeralPessoa.ParamByName('pcgc').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.ParamByName('pfornecedor').AsString := f;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cli_for = :pfornecedor and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('c.nm_cidade = :pcidade order by p.cd_pessoa');
    DataModule2.IBQConsGeralPessoa.ParamByName('pcidade').AsString := EdPesquisa.Text;
    DataModule2.IBQConsGeralPessoa.ParamByName('pfornecedor').AsString := f;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 4) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cli_for = :pfornecedor and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.rz_social LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule2.IBQConsGeralPessoa.ParamByName('pfornecedor').AsString := f;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 5) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsGeralPessoa.Close;
    DataModule2.IBQConsGeralPessoa.SQL.Clear;
    DataModule2.IBQConsGeralPessoa.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pf.*');
    DataModule2.IBQConsGeralPessoa.SQL.Add('from PESSOA p, PESSOA_JURIDICA pf, CIDADE c');
    DataModule2.IBQConsGeralPessoa.SQL.Add('where p.cd_pessoa = pf.cd_pessoa and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.cli_for = :pfornecedor and');
    DataModule2.IBQConsGeralPessoa.SQL.Add('pf.nm_fantazia LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule2.IBQConsGeralPessoa.ParamByName('pfornecedor').AsString := f;
    DataModule2.IBQConsGeralPessoa.Open;
    if DataModule2.IBQConsGeralPessoa.IsEmpty then
      begin
        ShowMessage('N�o existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end;

end;

procedure TFConsSimpFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpFornecedor.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpFornecedor.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 4;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

end.
