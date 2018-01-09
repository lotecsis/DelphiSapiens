unit UAcessosUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, rxToolEdit, DB,
  RbDrawCore, RbButton;

type
  TFAcessosUsuarios = class(TForm)
    FiltroPesquisa: TListBox;
    Data1: TDateEdit;
    Data2: TDateEdit;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    DBEGrid: TDBGrid;
    DsConsulta: TDataSource;
    BApaga: TRbButton;
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BApagaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcessosUsuarios: TFAcessosUsuarios;

implementation

uses UDataModule6, UDataModule3, UDataModule1;

{$R *.dfm}

procedure TFAcessosUsuarios.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
Data1.Clear;
Data2.Clear;
DataModule6.IBQConsAcessosUsu.Close;


    if FiltroPesquisa.ItemIndex = 0 then
      begin
      DataModule6.IBQConsAcessosUsu.Close;
      BPesquisa.Left := 320;
      BPesquisa.Visible := true;

      EdPesquisa.Top := 0;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 40;
      Data1.Left := 192;
      Data1.Visible := true;
      Data1.SetFocus;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;
    end
  else
    if FiltroPesquisa.ItemIndex = 1 then
      begin
      DataModule6.IBQConsAcessosUsu.Close;
      BPesquisa.Left := 456;
      BPesquisa.Visible := true;
      
      EdPesquisa.Top := 0;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 40;
      Data1.Left := 192;
      Data1.Visible := true;

      Data2.Top := 40;
      Data2.Left := 328;
      Data2.Visible := true;

      Data1.SetFocus;
    end
 else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
      DataModule6.IBQConsAcessosUsu.Close;
      BPesquisa.Left := 539;
      BPesquisa.Visible := true;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := true;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;

      EdPesquisa.SetFocus;
    end;

end;

procedure TFAcessosUsuarios.BPesquisaClick(Sender: TObject);
begin
  DataModule6.IBQConsAcessosUsu.Close;
  DataModule6.IBQConsAcessosUsu.SQL.Clear;
  DataModule6.IBQConsAcessosUsu.SQL.Add('select ac_usu.*, usu.nm_usuario');
  DataModule6.IBQConsAcessosUsu.SQL.Add('from ACESSOS_USUARIOS ac_usu');
  DataModule6.IBQConsAcessosUsu.SQL.Add('inner join USUARIO usu on usu.cd_usuario = ac_usu.cd_usuario');
  DataModule6.IBQConsAcessosUsu.SQL.Add('where');
  if FiltroPesquisa.ItemIndex = 0 then
    begin
     DataModule6.IBQConsAcessosUsu.SQL.Add('ac_usu.dt_acesso = :pdata');
     DataModule6.IBQConsAcessosUsu.ParamByName('pdata').AsDate := Data1.Date;
    end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
     DataModule6.IBQConsAcessosUsu.SQL.Add('ac_usu.dt_acesso between :pdata1 and :pdata2');
    DataModule6.IBQConsAcessosUsu.ParamByName('pdata1').AsDate := Data1.Date;
    DataModule6.IBQConsAcessosUsu.ParamByName('pdata2').AsDate := Data2.Date;
    end
else
  if FiltroPesquisa.ItemIndex = 2 then
    begin
     DataModule6.IBQConsAcessosUsu.SQL.Add('usu.nm_usuario LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    end;

    DataModule6.IBQConsAcessosUsu.Open;
end;

procedure TFAcessosUsuarios.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

procedure TFAcessosUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    begin
       Close;
    end;
end;

procedure TFAcessosUsuarios.BApagaClick(Sender: TObject);
begin
 if not DataModule6.IBQConsAcessosUsu.IsEmpty then
  begin

    DataModule6.IBDAcessosUsuario.Close;
    DataModule6.IBDAcessosUsuario.ParamByName('pacesso').AsInteger :=
    DataModule6.IBQConsAcessosUsuCD_ACESSO.AsInteger;
    DataModule6.IBDAcessosUsuario.Open;
    DataModule6.IBDAcessosUsuario.Delete;
    DataModule1.IBTTransacao.Commit;
    BPesquisa.Click;

  end;
end;

end.
