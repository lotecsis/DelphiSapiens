unit UConsSimpCondPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpCondPgto = class(TForm)
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
  FConsSimpCondPgto: TFConsSimpCondPgto;

implementation

uses UDataModule1;

{$R *.dfm}

procedure TFConsSimpCondPgto.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule1.IBQConsClasse.Close;

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

procedure TFConsSimpCondPgto.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpCondPgto.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpCondPgto.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
     DataModule1.IBQConsCondPgto.Close;
     DataModule1.IBQConsCondPgto.SQL.Clear;
     DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
     DataModule1.IBQConsCondPgto.SQL.Add('order by cd_cond_pgto  asc');
     DataModule1.IBQConsCondPgto.Open;
    if  DataModule1.IBQConsCondPgto.IsEmpty then
      begin
        ShowMessage('Não existe condições de pagamento cadastrados');
      end;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
         DataModule1.IBQConsCondPgto.Close;
         DataModule1.IBQConsCondPgto.SQL.Clear;
         DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
         DataModule1.IBQConsCondPgto.SQL.Add('where cd_cond_pgto = :pcondicao');
         DataModule1.IBQConsCondPgto.ParamByName('pcondicao').AsInteger := StrToInt(EdPesquisa.Text);
         DataModule1.IBQConsCondPgto.Open;
        if  DataModule1.IBQConsCondPgto.IsEmpty then
          begin
            ShowMessage('Não existe condição de pagamento cadastrado com este código');
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
             DataModule1.IBQConsCondPgto.Close;
             DataModule1.IBQConsCondPgto.SQL.Clear;
             DataModule1.IBQConsCondPgto.SQL.Add('select * from CONDICAO_PGTO');
             DataModule1.IBQConsCondPgto.SQL.Add('where ds_cond_pgto LIKE'
                                          +QuotedStr('%'+EdPesquisa.Text+'%'));
             DataModule1.IBQConsCondPgto.Open;
            if  DataModule1.IBQConsCondPgto.IsEmpty then
              begin
                ShowMessage('Não existe condição de pagamento cadastrado com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
            end;
          end;
          end;
end;

procedure TFConsSimpCondPgto.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpCondPgto.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpCondPgto.FormShow(Sender: TObject);
begin
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
  
end;

end.
