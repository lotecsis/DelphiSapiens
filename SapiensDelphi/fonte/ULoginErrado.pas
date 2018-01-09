unit ULoginErrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, rxToolEdit, DB,
  RbDrawCore, RbButton;

type
  TFLoginErrado = class(TForm)
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
  FLoginErrado: TFLoginErrado;

implementation

uses UDataModule6, UDataModule3, UDataModule1;

{$R *.dfm}

procedure TFLoginErrado.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
Data1.Clear;
Data2.Clear;
DataModule6.IBQConsLoginErrado.Close;


    if FiltroPesquisa.ItemIndex = 0 then
      begin
      DataModule6.IBQConsLoginErrado.Close;
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
      DataModule6.IBQConsLoginErrado.Close;
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
      DataModule6.IBQConsLoginErrado.Close;
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
    end
 else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
      DataModule6.IBQConsLoginErrado.Close;
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

procedure TFLoginErrado.BPesquisaClick(Sender: TObject);
begin
  DataModule6.IBQConsLoginErrado.Close;
  DataModule6.IBQConsLoginErrado.SQL.Clear;
  DataModule6.IBQConsLoginErrado.SQL.Add('select le.*');
  DataModule6.IBQConsLoginErrado.SQL.Add('from LOGIN_ERRADO le');
  DataModule6.IBQConsLoginErrado.SQL.Add('where');
  if FiltroPesquisa.ItemIndex = 0 then
    begin
     DataModule6.IBQConsLoginErrado.SQL.Add('le.dt_login = :pdata');
     DataModule6.IBQConsLoginErrado.ParamByName('pdata').AsDate := Data1.Date;
    end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
     DataModule6.IBQConsLoginErrado.SQL.Add('le.dt_login between :pdata1 and :pdata2');
    DataModule6.IBQConsLoginErrado.ParamByName('pdata1').AsDate := Data1.Date;
    DataModule6.IBQConsLoginErrado.ParamByName('pdata2').AsDate := Data2.Date;
    end
else
  if FiltroPesquisa.ItemIndex = 2 then
    begin
     DataModule6.IBQConsLoginErrado.SQL.Add('le.login LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    end
else
  if FiltroPesquisa.ItemIndex = 3 then
    begin
     DataModule6.IBQConsLoginErrado.SQL.Add('le.senha LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    end;
    DataModule6.IBQConsLoginErrado.Open;
end;

procedure TFLoginErrado.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

procedure TFLoginErrado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    begin
       Close;
    end;
end;

procedure TFLoginErrado.BApagaClick(Sender: TObject);
begin
 if not DataModule6.IBQConsLoginErrado.IsEmpty then
  begin

    DataModule6.IBDLoginErrado.Close;
    DataModule6.IBDLoginErrado.ParamByName('plogin').AsInteger :=
    DataModule6.IBQConsLoginErradoCD_LOGIN.AsInteger;
    DataModule6.IBDLoginErrado.Open;
    DataModule6.IBDLoginErrado.Delete;
    DataModule1.IBTTransacao.Commit;
    BPesquisa.Click;

  end;
end;

end.
