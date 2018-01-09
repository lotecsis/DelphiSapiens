unit UConsSimpTpCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpTpCobranca = class(TForm)
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
  FConsSimpTpCobranca: TFConsSimpTpCobranca;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpTpCobranca.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsTpCobranca.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Geral';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'C�digo';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Descri��o';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpTpCobranca.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpTpCobranca.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpTpCobranca.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsTpCobranca.Close;
    DataModule1.IBQConsTpCobranca.SQL.Clear;
    DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
    DataModule1.IBQConsTpCobranca.SQL.Add('order by cd_tipo_cobranca asc');
    DataModule1.IBQConsTpCobranca.Open;
    if DataModule1.IBQConsTpCobranca.IsEmpty then
      begin
        ShowMessage('N�o existe Tipo de Cobran�a cadastrado');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsTpCobranca.Close;
        DataModule1.IBQConsTpCobranca.SQL.Clear;
        DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
        DataModule1.IBQConsTpCobranca.SQL.Add('where cd_tipo_cobranca = :pcobranca');
        DataModule1.IBQConsTpCobranca.ParamByName('pcobranca').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsTpCobranca.Open;
        if DataModule1.IBQConsTpCobranca.IsEmpty then
          begin
            ShowMessage('N�o existe Tipo de Cobran�a cadastrados');
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
            DataModule1.IBQConsTpCobranca.Close;
            DataModule1.IBQConsTpCobranca.SQL.Clear;
            DataModule1.IBQConsTpCobranca.SQL.Add('select * from TIPO_COBRANCA');
            DataModule1.IBQConsTpCobranca.SQL.Add('where ds_tipo_cobranca  LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsTpCobranca.Open;
            if DataModule1.IBQConsTpCobranca.IsEmpty then
              begin
                ShowMessage('N�o existe Tipo de Cobran�a cadastrados');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;

end;

procedure TFConsSimpTpCobranca.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpTpCobranca.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpTpCobranca.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

end.
