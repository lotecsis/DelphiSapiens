unit UConsSimpUnMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpUnMedida = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    BSeleciona: TRbButton;
    BCancelar: TRbButton;
    procedure FiltroPesquisaExit(Sender: TObject);
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
  FConsSimpUnMedida: TFConsSimpUnMedida;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpUnMedida.FiltroPesquisaExit(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'GERAL';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'CÓDIGO';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'DESCRIÇÃO';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
    end;


procedure TFConsSimpUnMedida.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsUnMedida.Close;
end;

procedure TFConsSimpUnMedida.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpUnMedida.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpUnMedida.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule1.IBQConsUnMedida.Close;
    DataModule1.IBQConsUnMedida.SQL.Clear;
    DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
    DataModule1.IBQConsUnMedida.SQL.Add('order by cd_unidade asc');
    DataModule1.IBQConsUnMedida.Open;
    if DataModule1.IBQConsUnMedida.IsEmpty then
      begin
        ShowMessage('Não existe Unidades de Medida cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule1.IBQConsUnMedida.Close;
        DataModule1.IBQConsUnMedida.SQL.Clear;
        DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
        DataModule1.IBQConsUnMedida.SQL.Add('where cd_unidade = :punidade');
        DataModule1.IBQConsUnMedida.ParamByName('punidade').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule1.IBQConsUnMedida.Open;
        if DataModule1.IBQConsUnMedida.IsEmpty then
          begin
            ShowMessage('Não existe unidades de medida cadastrados com este código');
            EdPesquisa.SetFocus;
          end;
        end;
       end
      else
        if FiltroPesquisa.ItemIndex = 2 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule1.IBQConsUnMedida.Close;
            DataModule1.IBQConsUnMedida.SQL.Clear;
            DataModule1.IBQConsUnMedida.SQL.Add('select * from UNIDADE_MEDIDA');
            DataModule1.IBQConsUnMedida.SQL.Add('where ds_unidade LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
            DataModule1.IBQConsUnMedida.Open;
            if DataModule1.IBQConsUnMedida.IsEmpty then
              begin
                ShowMessage('Não existe unidades de medida cadastrados com esta descrição');
                EdPesquisa.SetFocus;
            end;
          end;
          end;


end;

procedure TFConsSimpUnMedida.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpUnMedida.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpUnMedida.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 2;
FiltroPesquisaExit(sender);
EdPesquisa.SetFocus;
end;

end.
