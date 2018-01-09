unit UConsLogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton, ComCtrls, Mask, DBCtrls;

type
  TFConsLogs = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    EdPesquisa: TEdit;
    DsInsert: TDataSource;
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbAlteracoes: TTabSheet;
    TbExclusoes: TTabSheet;
    BPesUsuario: TSpeedButton;
    DBGCadastro: TDBGrid;
    DsUpdate: TDataSource;
    DsExclusao: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    procedure FiltroPesquisaExit(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPesUsuarioClick(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsLogs: TFConsLogs;

implementation

uses UDataModule1, UUsuario, UConsSimpUsuario, UDataModule5;

{$R *.dfm}

procedure TFConsLogs.FiltroPesquisaExit(Sender: TObject);
begin
{if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Geral';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Código';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end; }
    end;


procedure TFConsLogs.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
{if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end; }
end;

procedure TFConsLogs.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsLogs.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFConsLogs.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsLogs.FormShow(Sender: TObject);
begin
PaginaControle.ActivePageIndex := 0;
EdPesquisa.SetFocus;
end;

procedure TFConsLogs.BPesUsuarioClick(Sender: TObject);
begin
  FConsSimpUsuarios := TFConsSimpUsuarios.Create(Self);
  if FConsSimpUsuarios.ShowModal = mrOk then
    begin
       EdPesquisa.Text := DataModule1.IBQConsUsuarioNM_USUARIO.AsString;
    end;
end;

procedure TFConsLogs.BPesquisaClick(Sender: TObject);
begin
 if EdPesquisa.Text <> '' then
  begin

  DataModule5.IBQLogInsert.Close;
  DataModule5.IBQLogInsert.SQL.Clear;
  DataModule5.IBQLogInsert.SQL.Add('select logs.*, usuario.nm_usuario');
  DataModule5.IBQLogInsert.SQL.Add('from logs');
  DataModule5.IBQLogInsert.SQL.Add('inner join usuario on usuario.cd_usuario = logs.cd_usuario');
  DataModule5.IBQLogInsert.SQL.Add('where usuario.nm_usuario like ' +QuotedStr('%'+EdPesquisa.Text+'%'));
  DataModule5.IBQLogInsert.SQL.Add('and logs.operacao = ''I''');
  DataModule5.IBQLogInsert.Open;

  DataModule5.IBQLogUpdate.Close;
  DataModule5.IBQLogUpdate.SQL.Clear;
  DataModule5.IBQLogUpdate.SQL.Add('select logs.*, usuario.nm_usuario');
  DataModule5.IBQLogUpdate.SQL.Add('from logs');
  DataModule5.IBQLogUpdate.SQL.Add('inner join usuario on usuario.cd_usuario = logs.cd_usuario');
  DataModule5.IBQLogUpdate.SQL.Add('where usuario.nm_usuario like ' +QuotedStr('%'+EdPesquisa.Text+'%'));
  DataModule5.IBQLogUpdate.SQL.Add('and logs.operacao = ''U''');
  DataModule5.IBQLogUpdate.Open;

  DataModule5.IBQLogDelete.Close;
  DataModule5.IBQLogDelete.SQL.Clear;
  DataModule5.IBQLogDelete.SQL.Add('select logs.*, usuario.nm_usuario');
  DataModule5.IBQLogDelete.SQL.Add('from logs');
  DataModule5.IBQLogDelete.SQL.Add('inner join usuario on usuario.cd_usuario = logs.cd_usuario');
  DataModule5.IBQLogDelete.SQL.Add('where usuario.nm_usuario like ' +QuotedStr('%'+EdPesquisa.Text+'%'));
  DataModule5.IBQLogDelete.SQL.Add('and logs.operacao = ''D''');
  DataModule5.IBQLogDelete.Open;
end;
 end;
end.
