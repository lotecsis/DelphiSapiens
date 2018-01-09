unit UConsSimpPFisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpPFisica = class(TForm)
    LDescricaoPesquisa: TLabel;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    Label1: TLabel;
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
  FConsSimpPFisica: TFConsSimpPFisica;
  f : string;
implementation

uses UDataModule1, UDataModule2;

{$R *.dfm}

procedure TFConsSimpPFisica.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsClasse.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Nome';
      EdPesquisa.MaxLength := 100;
      EdPesquisa.ReadOnly := false;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'C.P.F';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 100;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'R.G';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         //DataModule2.IBQConsPesFi.FieldByName('CGC').EditMask := '##.###.###/####-##;0';
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
         LDescricaoPesquisa.Caption := 'Contido no Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpPFisica.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpPFisica.BPesquisaClick(Sender: TObject);
begin
if (FiltroPesquisa.ItemIndex = 0) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.nm_pessoa = :pnome order by p.cd_pessoa');
    DataModule2.IBQConsPesFi.ParamByName('pnome').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
  else
   if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.cpf = :pcpf order by p.cd_pessoa');
    DataModule2.IBQConsPesFi.ParamByName('pcpf').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.rg = :prg');
    DataModule2.IBQConsPesFi.ParamByName('prg').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('c.nm_cidade = :pcidade order by p.cd_pessoa');
    DataModule2.IBQConsPesFi.ParamByName('pcidade').AsString := EdPesquisa.Text;
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 4) and (EdPesquisa.Text <> '') then
  begin
    DataModule2.IBQConsPesFi.Close;
    DataModule2.IBQConsPesFi.SQL.Clear;
    DataModule2.IBQConsPesFi.SQL.Add('select p.*,c.nm_cidade, c.sigla_uf, pff.*');
    DataModule2.IBQConsPesFi.SQL.Add('from PESSOA p, PESSOA_FISICA pff, CIDADE c');
    DataModule2.IBQConsPesFi.SQL.Add('where p.cd_pessoa = pff.cd_pessoa and');
    DataModule2.IBQConsPesFi.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule2.IBQConsPesFi.SQL.Add('pff.nm_pessoa LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule2.IBQConsPesFi.Open;
    if DataModule2.IBQConsPesFi.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end;

end;

procedure TFConsSimpPFisica.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpPFisica.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpPFisica.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 4;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

end.
