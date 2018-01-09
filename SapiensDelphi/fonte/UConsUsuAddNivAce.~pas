unit UConsUsuAddNivAce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB;

type
  TFConsUsuAddNivAce = class(TForm)
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BOk: TBitBtn;
    BCancela: TBitBtn;
    procedure BPesquisaClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsUsuAddNivAce: TFConsUsuAddNivAce;

implementation

uses UDm, UDataModule1;

{$R *.dfm}

procedure TFConsUsuAddNivAce.BPesquisaClick(Sender: TObject);
begin
  dm.ClientConsUsu_TR999Usu.Close;
  dm.ConsUsu_TR999Usu.Close;
  dm.ConsUsu_TR999Usu.SQL.Clear;
  dm.ConsUsu_TR999Usu.SQL.Add('select * from usu_tr999usu');
  if (FiltroPesquisa.ItemIndex = 1) and (EdPesquisa.Text <> '') then
    begin
       dm.ConsUsu_TR999Usu.SQL.Add('where');
       dm.ConsUsu_TR999Usu.SQL.Add('usu_codusu = :codusu');
       dm.ConsUsu_TR999Usu.Parameters.ParamByName('codusu').Value :=
                                       StrToInt(EdPesquisa.Text);

    end
  else
  if (FiltroPesquisa.ItemIndex = 2) then
    begin
       dm.ConsUsu_TR999Usu.SQL.Add('where');
       dm.ConsUsu_TR999Usu.SQL.Add('usu_nomusu LIKE'
                                                +QuotedStr('%'+EdPesquisa.Text+'%'));
    end;

      dm.ConsUsu_TR999Usu.SQL.Add('order by usu_nomusu');
      dm.ConsUsu_TR999Usu.Open;
      dm.ClientConsUsu_TR999Usu.Open;

end;

procedure TFConsUsuAddNivAce.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;
end;

procedure TFConsUsuAddNivAce.FiltroPesquisaClick(Sender: TObject);
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
      EdPesquisa.SetFocus;
    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
         LDescricaoPesquisa.Caption := 'Nome';
         EdPesquisa.ReadOnly := false;
         EdPesquisa.MaxLength := 100;
         EdPesquisa.SetFocus;
      end;
end;

procedure TFConsUsuAddNivAce.FormShow(Sender: TObject);
begin
    FiltroPesquisa.ItemIndex := 0;
    FiltroPesquisaClick(Sender);
end;

procedure TFConsUsuAddNivAce.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFConsUsuAddNivAce.EdPesquisaExit(Sender: TObject);
begin
  BPesquisa.Click;
end;

procedure TFConsUsuAddNivAce.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (dm.ClientConsUsu_TR999Usu.FieldByName('USU_SITUSU').Value = 'A') or
       (dm.ClientConsUsu_TR999Usu.FieldByName('USU_SITUSU').Value = 'I') then
       begin
          dm.ClientConsUsu_TR999Usu.Edit;
          dm.ClientConsUsu_TR999Usu.FieldByName('USU_SITUSU').Value := null;
          dm.ClientConsUsu_TR999Usu.Post;
       end;
end;

procedure TFConsUsuAddNivAce.DBGrid1CellClick(Column: TColumn);
begin
    dm.ClientConsUsu_TR999Usu.Open;
    dm.ClientConsUsu_TR999Usu.Edit;
    if (dm.ClientConsUsu_TR999Usu.FieldByName('USU_SITUSU').Value = 'ü') then
        dm.ClientConsUsu_TR999Usu.FieldByName('USU_SITUSU').Value := null
    else
        dm.ClientConsUsu_TR999Usu.FieldByName('USU_SITUSU').Value := 'ü';
        dm.ClientConsUsu_TR999Usu.Post;
end;

procedure TFConsUsuAddNivAce.BOkClick(Sender: TObject);
begin
   dm.ClientConsUsu_TR999Usu.First;
   while not dm.ClientConsUsu_TR999Usu.Eof do
    begin
       if dm.ClientConsUsu_TR999UsuUSU_SITUSU.Value = 'ü' then
         begin
           dm.CadUsu_TR999Usu.Close;
           dm.CadUsu_TR999Usu.Parameters.ParamByName('codusu').Value :=
           dm.ClientConsUsu_TR999UsuUSU_CODUSU.Value;
           dm.CadUsu_TR999Usu.Open;
           dm.CadUsu_TR999Usu.Edit;
           dm.CadUsu_TR999UsuUSU_CODNIV.Value := dm.ConsUsu_TNivAce2USU_CODNIV.Value;
           dm.CadUsu_TR999Usu.Post;
         end;
       dm.ClientConsUsu_TR999Usu.Next;
    end;
    Close;

    dm.ConsUsu_TR999usuNiv.Close;
    dm.ConsUsu_TR999usuNiv.Parameters.ParamByName('codniv').Value :=
    dm.ConsUsu_TNivAce2USU_CODNIV.Value;
    dm.ConsUsu_TR999usuNiv.Open;
end;

end.
