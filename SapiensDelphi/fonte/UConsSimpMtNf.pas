unit UConsSimpMtNf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton;

type
  TFConsSimpMtNf = class(TForm)
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsSimpMtNf: TFConsSimpMtNf;

implementation

uses UDataModule1, UDataModule4;

{$R *.dfm}

procedure TFConsSimpMtNf.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
DataModule4.IBQConsMatNf.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      LDescricaoPesquisa.Caption := 'Geral';
      EdPesquisa.ReadOnly := true;
      BPesquisa.Click;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      LDescricaoPesquisa.Caption := 'Código da Matéria Prima Nf';
      EdPesquisa.ReadOnly := false;
      EdPesquisa.MaxLength := 6;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Código da Matéria Prima';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição da Matéria Prima Nf';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end
  else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
         LDescricaoPesquisa.Caption := 'Descrição da Matéria Prima';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
      end;
end;

procedure TFConsSimpMtNf.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (FiltroPesquisa.ItemIndex = 1) or (FiltroPesquisa.ItemIndex = 2) then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsSimpMtNf.EdPesquisaExit(Sender: TObject);
begin
BPesquisa.Click;
end;

procedure TFConsSimpMtNf.BPesquisaClick(Sender: TObject);
begin
if FiltroPesquisa.ItemIndex = 0 then
  begin
    DataModule4.IBQConsMatNf.Close;
    DataModule4.IBQConsMatNf.SQL.Clear;
    DataModule4.IBQConsMatNf.SQL.Add('select mt_nf.*, mt.*,un.ds_unidade,');
    DataModule4.IBQConsMatNf.SQL.Add('un.sigla_unidade, cla.ds_classe,');
    DataModule4.IBQConsMatNf.SQL.Add('pj.cd_pessoa_ju, pj.rz_social');
    DataModule4.IBQConsMatNf.SQL.Add('from MT_PRIMA_NF mt_nf');
    DataModule4.IBQConsMatNf.SQL.Add('inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_prima');
    DataModule4.IBQConsMatNf.SQL.Add('inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade');
    DataModule4.IBQConsMatNf.SQL.Add('inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe');
    DataModule4.IBQConsMatNf.SQL.Add('inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pessoa_ju');
    DataModule4.IBQConsMatNf.SQL.Add('order by mt.cd_mat_prima');
    DataModule4.IBQConsMatNf.Open;

 end
  else
      if filtroPesquisa.ItemIndex = 1 then
       begin
       if EdPesquisa.Text <> '' then
       begin
        DataModule4.IBQConsMatNf.Close;
        DataModule4.IBQConsMatNf.SQL.Clear;
        DataModule4.IBQConsMatNf.SQL.Add('select mt_nf.*, mt.*,un.ds_unidade,');
        DataModule4.IBQConsMatNf.SQL.Add('un.sigla_unidade, cla.ds_classe,');
        DataModule4.IBQConsMatNf.SQL.Add('pj.cd_pessoa_ju, pj.rz_social');
        DataModule4.IBQConsMatNf.SQL.Add('from MT_PRIMA_NF mt_nf');
        DataModule4.IBQConsMatNf.SQL.Add('inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_prima');
        DataModule4.IBQConsMatNf.SQL.Add('inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade');
        DataModule4.IBQConsMatNf.SQL.Add('inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe');
        DataModule4.IBQConsMatNf.SQL.Add('inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pessoa_ju');
        DataModule4.IBQConsMatNf.SQL.Add('where mt_nf.cd_prima_nf = :pmateria');
        DataModule4.IBQConsMatNf.ParamByName('pmateria').AsInteger := StrToInt(EdPesquisa.Text);
        DataModule4.IBQConsMatNf.Open;
        if DataModule4.IBQConsMatNf.IsEmpty then
          begin
            ShowMessage('Não ');
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
            DataModule4.IBQConsMatNf.Close;
            DataModule4.IBQConsMatNf.SQL.Clear;
            DataModule4.IBQConsMatNf.SQL.Add('select mt_nf.*, mt.*,un.ds_unidade,');
            DataModule4.IBQConsMatNf.SQL.Add('un.sigla_unidade, cla.ds_classe,');
            DataModule4.IBQConsMatNf.SQL.Add('pj.cd_pessoa_ju, pj.rz_social');
            DataModule4.IBQConsMatNf.SQL.Add('from MT_PRIMA_NF mt_nf');
            DataModule4.IBQConsMatNf.SQL.Add('inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_prima');
            DataModule4.IBQConsMatNf.SQL.Add('inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade');
            DataModule4.IBQConsMatNf.SQL.Add('inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe');
            DataModule4.IBQConsMatNf.SQL.Add('inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pessoa_ju');
            DataModule4.IBQConsMatNf.SQL.Add('where mt.cd_mat_prima = :pmateria');
            DataModule4.IBQConsMatNf.ParamByName('pmateria').AsInteger := StrToInt(EdPesquisa.Text);
            DataModule4.IBQConsMatNf.Open;
            if DataModule4.IBQConsMatNf.IsEmpty then
              begin
                ShowMessage('Não existe classes cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
              end;
          end;
      end
    else
        if FiltroPesquisa.ItemIndex = 3 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule4.IBQConsMatNf.Close;
            DataModule4.IBQConsMatNf.SQL.Clear;
            DataModule4.IBQConsMatNf.SQL.Add('select mt_nf.*, mt.*,un.ds_unidade,');
            DataModule4.IBQConsMatNf.SQL.Add('un.sigla_unidade, cla.ds_classe,');
            DataModule4.IBQConsMatNf.SQL.Add('pj.cd_pessoa_ju, pj.rz_social');
            DataModule4.IBQConsMatNf.SQL.Add('from MT_PRIMA_NF mt_nf');
            DataModule4.IBQConsMatNf.SQL.Add('inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_prima');
            DataModule4.IBQConsMatNf.SQL.Add('inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade');
            DataModule4.IBQConsMatNf.SQL.Add('inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe');
            DataModule4.IBQConsMatNf.SQL.Add('inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pessoa_ju');
            DataModule4.IBQConsMatNf.SQL.Add('where mt_nf.ds_prima_nf LIKE'
                                            +QuotedStr('%'+EdPesquisa.Text+'%'));

            DataModule4.IBQConsMatNf.Open;
            if DataModule4.IBQConsMatNf.IsEmpty then
              begin
                ShowMessage('Não existe classes cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
              end;
          end;
      end
    else
        if FiltroPesquisa.ItemIndex = 4 then
          begin
          if EdPesquisa.Text <> '' then
          begin
            DataModule4.IBQConsMatNf.Close;
            DataModule4.IBQConsMatNf.SQL.Clear;
            DataModule4.IBQConsMatNf.SQL.Add('select mt_nf.*, mt.*,un.ds_unidade,');
            DataModule4.IBQConsMatNf.SQL.Add('un.sigla_unidade, cla.ds_classe,');
            DataModule4.IBQConsMatNf.SQL.Add('pj.cd_pessoa_ju, pj.rz_social');
            DataModule4.IBQConsMatNf.SQL.Add('from MT_PRIMA_NF mt_nf');
            DataModule4.IBQConsMatNf.SQL.Add('inner join MATERIA_PRIMA  mt on mt.cd_mat_prima = mt_nf.cd_mat_prima');
            DataModule4.IBQConsMatNf.SQL.Add('inner join UNIDADE_MEDIDA un on mt.cd_un_medida = un.cd_unidade');
            DataModule4.IBQConsMatNf.SQL.Add('inner join CLASSE_MAT_PRIMA cla on mt.cd_classe = cla.cd_classe');
            DataModule4.IBQConsMatNf.SQL.Add('inner join PESSOA_JURIDICA pj on mt_nf.cd_fornecedor = pj.cd_pessoa_ju');
            DataModule4.IBQConsMatNf.SQL.Add('where mt.ds_mat_prima LIKE'
                                            +QuotedStr('%'+EdPesquisa.Text+'%'));

            DataModule4.IBQConsMatNf.Open;
            if DataModule4.IBQConsMatNf.IsEmpty then
              begin
                ShowMessage('Não existe classes cadastrados com esta descrição');
                EdPesquisa.SetFocus;
                EdPesquisa.Clear;
              end;
          end;
      end;

end;

procedure TFConsSimpMtNf.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFConsSimpMtNf.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFConsSimpMtNf.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(sender);
FiltroPesquisa.ItemIndex := 4;
FiltroPesquisaClick(sender);
EdPesquisa.SetFocus;
end;

procedure TFConsSimpMtNf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F5 then
  begin
    FiltroPesquisa.ItemIndex := 2;
    FiltroPesquisaClick(Sender);
    FiltroPesquisaClick(Sender);
    ActiveControl := EdPesquisa;
  end;
end;

end.
