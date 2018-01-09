unit UConsSimpNivelAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpNivel = class(TForm)
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
  FConsSimpNivel: TFConsSimpNivel;

implementation

uses UDataModule1, UDm;

{$R *.dfm}

procedure TFConsSimpNivel.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;


if FiltroPesquisa.ItemIndex = 0 then
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
      end;
end;

procedure TFConsSimpNivel.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpNivel.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpNivel.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin

    dm.ConsUsu_TNivAce.Close;
    dm.ConsUsu_TNivAce.SQL.Clear;
    dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
    dm.ConsUsu_TNivAce.SQL.Add('order by usu_codniv asc');
    dm.ConsUsu_TNivAce.Open;
    
 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        dm.ConsUsu_TNivAce.Close;
        dm.ConsUsu_TNivAce.SQL.Clear;
        dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
        dm.ConsUsu_TNivAce.SQL.Add('where usu_codniv = :codniv');
        dm.ConsUsu_TNivAce.Parameters.ParamByName('codniv').Value:= StrToInt(EdPesquisa.Text);
        dm.ConsUsu_TNivAce.Open;
        if dm.ConsUsu_TNivAce.IsEmpty then
          begin
            ShowMessage('Não existe Nível cadastrado');
            EdPesquisa.SetFocus;
            EdPesquisa.Clear;
          end;
        end;
       end
      else
        if FiltroPesquisa.ItemIndex = 2 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            dm.ConsUsu_TNivAce.Close;
            dm.ConsUsu_TNivAce.SQL.Clear;
            dm.ConsUsu_TNivAce.SQL.Add('select * from usu_tnivace');
            dm.ConsUsu_TNivAce.SQL.Add('where usu_desniv LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            dm.ConsUsu_TNivAce.Open;
            if dm.ConsUsu_TNivAce.IsEmpty then
              begin
                ShowMessage('Não existe Nível cadastrado');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;

end;

procedure TFConsSimpNivel.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpNivel.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpNivel.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(sender);
EdPesquisaExit(sender);

FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaClick(sender);
EdPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

end.
