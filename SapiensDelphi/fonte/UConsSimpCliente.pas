unit UConsSimpCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpCliente = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
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
  FConsSimpCliente: TFConsSimpCliente;
   c : string;
implementation

uses UDataModule1, UDataModule3, UDataModule2;

{$R *.dfm}

procedure TFConsSimpCliente.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule3.IBQGeralPessoa.Close;
if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Razão Social';
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
         LDescricaoPesquisa.Caption := 'Contido na Razão Social';
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

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Razão Social';
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
         LDescricaoPesquisa.Caption := 'Contido na Razão Social';
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

procedure TFConsSimpCliente.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpCliente.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpCliente.BPesquisaClick(Sender: TObject);
begin
c := 'C';

if (FiltroPesquisa.ItemIndex = 0) and (EdPesquisa.Text <> '') then
  begin
    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cli_for = :pcli and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.rz_social = :prazao');
    DataModule3.IBQGeralPessoa.ParamByName('pcli').AsString := c;
    DataModule3.IBQGeralPessoa.ParamByName('prazao').AsString := EdPesquisa.Text;
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
  else
   if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
  begin
    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cli_for = :pcli and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.nm_fantazia = :pfantasia');
    DataModule3.IBQGeralPessoa.ParamByName('pcli').AsString := c;
    DataModule3.IBQGeralPessoa.ParamByName('pfantasia').AsString := EdPesquisa.Text;
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 2) and (EdPesquisa.Text <> '') then
  begin
    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cli_for = :pcli and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cgc = :pcgc');
    DataModule3.IBQGeralPessoa.ParamByName('pcli').AsString := c;
    DataModule3.IBQGeralPessoa.ParamByName('pcgc').AsString := EdPesquisa.Text;
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 3) and (EdPesquisa.Text <> '') then
  begin
    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cli_for = :pcli and');
    DataModule3.IBQGeralPessoa.SQL.Add('c.nm_cidade = :pcidade');
    DataModule3.IBQGeralPessoa.ParamByName('pcli').AsString := c;
    DataModule3.IBQGeralPessoa.ParamByName('pcidade').AsString := EdPesquisa.Text;
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end
    else
    if (FiltroPesquisa.ItemIndex = 4) and (EdPesquisa.Text <> '') then
  begin
    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cli_for = :pcli and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.rz_social LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule3.IBQGeralPessoa.ParamByName('pcli').AsString := c;
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

    else
    if (FiltroPesquisa.ItemIndex = 5) and (EdPesquisa.Text <> '') then
  begin
    DataModule3.IBQGeralPessoa.Close;
    DataModule3.IBQGeralPessoa.SQL.Clear;
    DataModule3.IBQGeralPessoa.SQL.Add('select p.*, pj.*, c.nm_cidade');
    DataModule3.IBQGeralPessoa.SQL.Add('from');
    DataModule3.IBQGeralPessoa.SQL.Add('pessoa p, pessoa_juridica pj, cidade c');
    DataModule3.IBQGeralPessoa.SQL.Add('where');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cd_pessoa = p.cd_pessoa and');
    DataModule3.IBQGeralPessoa.SQL.Add('p.cd_cidade = c.cd_cidade and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.cli_for = :pcli and');
    DataModule3.IBQGeralPessoa.SQL.Add('pj.nm_fantazia LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
    DataModule3.IBQGeralPessoa.ParamByName('pcli').AsString := c;
    DataModule3.IBQGeralPessoa.Open;
    if DataModule3.IBQGeralPessoa.IsEmpty then
      begin
        ShowMessage('Não existe Pessoa cadastradas');
        EdPesquisa.Clear;
        EdPesquisa.SetFocus;
      end;
    end

end;

procedure TFConsSimpCliente.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpCliente.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpCliente.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 4;
  FiltroPesquisaClick(Sender);
end;

end.
