unit UFormNivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB;

type
  TFFormNivel = class(TForm)
    PaginaControle: TPageControl;
    TbFormNivel: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    TbNivAceUsu: TTabSheet;
    DsConsNivel: TDataSource;
    DsForNiv: TDataSource;
    BMostrarNiv: TBitBtn;
    Panel6: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    BAdiciona: TBitBtn;
    BExclui: TBitBtn;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Panel17: TPanel;
    Label3: TLabel;
    DsUsuNiv: TDataSource;
    BAddUsu: TBitBtn;
    Label4: TLabel;
    procedure BMostrarNivClick(Sender: TObject);
    procedure BAdicionaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BExcluiClick(Sender: TObject);
    procedure BAddUsuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFormNivel: TFFormNivel;

implementation

uses UDm, UConsFormularios, UConsUsuAddNivAce, UPrincipal;

{$R *.dfm}

procedure TFFormNivel.BMostrarNivClick(Sender: TObject);
begin
    dm.ConsUsu_TNivAce2.Close;
    dm.ConsUsu_TNivAce2.SQL.Clear;
    dm.ConsUsu_TNivAce2.SQL.Add('select * from usu_tnivace');
    dm.ConsUsu_TNivAce2.SQL.Add('order by usu_codniv asc');
    dm.ConsUsu_TNivAce2.Open;

end;

procedure TFFormNivel.BAdicionaClick(Sender: TObject);
begin
  if not (dm.ConsUsu_TNivAce2.IsEmpty) then
    begin
      FConsFormularios := TFConsFormularios.Create(Self);
      FConsFormularios.ShowModal;
      FreeAndNil(FConsFormularios);
    end;
end;

procedure TFFormNivel.FormShow(Sender: TObject);
begin
FPrincipal.GravaTela(FFormNivel.Name,FPrincipal.vnCodCon);
  BMostrarNiv.Click;
  PaginaControle.ActivePageIndex := 1;
end;

procedure TFFormNivel.BExcluiClick(Sender: TObject);
begin
    dm.CadUsu_ForNiv.Close();
    dm.CadUsu_ForNiv.Parameters.ParamByName('codcom').Value :=
                                     dm.ConsUsu_TForNivUSU_CODCOM.Value;
    dm.CadUsu_ForNiv.Open;
    dm.CadUsu_ForNiv.Edit;
    dm.CadUsu_ForNivUSU_FORLIB.Value := 'N';
    dm.CadUsu_ForNiv.Post;

    dm.ConsUsu_TForNiv.Close;
    dm.ConsUsu_TForNiv.Parameters.ParamByName('codniv').Value :=
    dm.ConsUsu_TNivAce2USU_CODNIV.Value;
    dm.ConsUsu_TForNiv.Open;

     PaginaControle.ActivePageIndex := 0;


    
end;

procedure TFFormNivel.BAddUsuClick(Sender: TObject);
begin
  FConsUsuAddNivAce := TFConsUsuAddNivAce.Create(Self);
  FConsUsuAddNivAce.ShowModal;
  FreeAndNil(FConsUsuAddNivAce);    
end;

procedure TFFormNivel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FPrincipal.ApagaTela(FFormNivel.Name,FPrincipal.vnCodCon);
end;

end.
