unit UConsFormularios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, DB;

type
  TFConsFormularios = class(TForm)
    FiltroPesquisa: TListBox;
    EdPesquisa: TEdit;
    DBEGrig: TRxDBGrid;
    BMostrar: TBitBtn;
    BOk: TBitBtn;
    BCancela: TBitBtn;
    DsForNiv2: TDataSource;
    LDsConsulta: TLabel;
    procedure BMostrarClick(Sender: TObject);
    procedure DBEGrigCellClick(Column: TColumn);
    procedure DBEGrigDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaExit(Sender: TObject);
    procedure BCancelaClick(Sender: TObject);
    procedure BOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsFormularios: TFConsFormularios;

implementation

uses UDm, UPrincipal;

{$R *.dfm}

procedure TFConsFormularios.BMostrarClick(Sender: TObject);
begin
  if FiltroPesquisa.ItemIndex = 0 then
    begin
       dm.ClientUsu_TForNiv2.Close;
       dm.ConsUsu_TForNiv2.Close;
       dm.ConsUsu_TForNiv2.SQL.Clear;
       dm.ConsUsu_TForNiv2.SQL.Add('select usu_tforniv.*, usu_tformul.*');
       dm.ConsUsu_TForNiv2.SQL.Add('from usu_tforniv');
       dm.ConsUsu_TForNiv2.SQL.Add('inner join usu_tformul on usu_tformul.usu_codfor = usu_tforniv.usu_codfor');
       dm.ConsUsu_TForNiv2.SQL.Add('where');
       dm.ConsUsu_TForNiv2.SQL.Add('usu_tforniv.usu_codniv = :codniv and');
       dm.ConsUsu_TForNiv2.SQL.Add('usu_tforniv.usu_forlib = ''N''');
       dm.ConsUsu_TForNiv2.SQL.Add('order by  usu_tformul.usu_desfor asc');
       dm.ConsUsu_TForNiv2.Parameters.ParamByName('codniv').Value :=
                                                  dm.ConsUsu_TNivAce2USU_CODNIV.Value;
       dm.ConsUsu_TForNiv2.Open;
       dm.ClientUsu_TForNiv2.Open;
    end
  else
    if FiltroPesquisa.ItemIndex = 1 then
      begin
        dm.ClientUsu_TForNiv2.Close; 
       dm.ConsUsu_TForNiv2.Close;
       dm.ConsUsu_TForNiv2.SQL.Clear;
       dm.ConsUsu_TForNiv2.SQL.Add('select usu_tforniv.*, usu_tformul.*');
       dm.ConsUsu_TForNiv2.SQL.Add('from usu_tforniv');
       dm.ConsUsu_TForNiv2.SQL.Add('inner join usu_tformul on usu_tformul.usu_codfor = usu_tforniv.usu_codfor');
       dm.ConsUsu_TForNiv2.SQL.Add('where');
       dm.ConsUsu_TForNiv2.SQL.Add('usu_tforniv.usu_codniv = :codniv and');
       dm.ConsUsu_TForNiv2.SQL.Add('usu_tforniv.usu_forlib = ''N'' and');
        dm.ConsUsu_TForNiv2.SQL.Add('usu_tformul.usu_desfor LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
       dm.ConsUsu_TForNiv2.SQL.Add('order by  usu_tformul.usu_desfor asc');
       dm.ConsUsu_TForNiv2.Parameters.ParamByName('codniv').Value :=
                                                  dm.ConsUsu_TNivAce2USU_CODNIV.Value;
       dm.ConsUsu_TForNiv2.Open;
       dm.ClientUsu_TForNiv2.Open;
      end;
end;

procedure TFConsFormularios.DBEGrigCellClick(Column: TColumn);
begin
    Dm.ClientUsu_TForNiv2.Open;
    Dm.ClientUsu_TForNiv2.Edit;
    if (Dm.ClientUsu_TForNiv2.FieldByName('USU_FORLIB').Value = 'ü') then
        Dm.ClientUsu_TForNiv2.FieldByName('USU_FORLIB').Value := null
    else
        Dm.ClientUsu_TForNiv2.FieldByName('USU_FORLIB').Value := 'ü';
        Dm.ClientUsu_TForNiv2.Post;
end;

procedure TFConsFormularios.DBEGrigDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Dm.ClientUsu_TForNiv2.FieldByName('USU_FORLIB').Value = 'N' then
    begin
      Dm.ClientUsu_TForNiv2.Edit;
      Dm.ClientUsu_TForNiv2.FieldByName('USU_FORLIB').Value := null;
      Dm.ClientUsu_TForNiv2.Post;
    end;
end;

procedure TFConsFormularios.FiltroPesquisaClick(Sender: TObject);
begin
  if FiltroPesquisa.ItemIndex = 0 then
    begin
      LDsConsulta.Caption := 'Geral';
      BMostrar.Click;
    end
  else
    if FiltroPesquisa.ItemIndex = 1 then
       begin
         LDsConsulta.Caption := 'Nome';
         EdPesquisa.Clear;
         EdPesquisa.SetFocus;
       end
end;

procedure TFConsFormularios.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FConsFormularios.Name,FPrincipal.vnCodCon);
  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);
end;

procedure TFConsFormularios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFConsFormularios.EdPesquisaExit(Sender: TObject);
begin
  BMostrar.Click;
end;

procedure TFConsFormularios.BCancelaClick(Sender: TObject);
begin
Close;
end;

procedure TFConsFormularios.BOkClick(Sender: TObject);
begin
    dm.ClientUsu_TForNiv2.First;
    while not dm.ClientUsu_TForNiv2.Eof do
      begin
      if dm.ClientUsu_TForNiv2USU_FORLIB.Value = 'ü' then
        begin
           dm.CadUsu_ForNiv.Close();
           dm.CadUsu_ForNiv.Parameters.ParamByName('codcom').Value :=
                                     dm.ClientUsu_TForNiv2USU_CODCOM.Value;
           dm.CadUsu_ForNiv.Open;
           dm.CadUsu_ForNiv.Edit;
           dm.CadUsu_ForNivUSU_FORLIB.Value := 'S';
           dm.CadUsu_ForNiv.Post;
        end;
         dm.ClientUsu_TForNiv2.Next;
      end;
    Close;

      dm.ConsUsu_TForNiv.Close;
      dm.ConsUsu_TForNiv.Parameters.ParamByName('codniv').Value :=
      dm.ConsUsu_TNivAce2USU_CODNIV.Value;
      dm.ConsUsu_TForNiv.Open;
end;

procedure TFConsFormularios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FPrincipal.ApagaTela(FConsFormularios.Name,FPrincipal.vnCodCon);
end;

end.
