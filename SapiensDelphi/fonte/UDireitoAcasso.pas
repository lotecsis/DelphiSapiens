unit UDireitoAcasso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, RXDBCtrl, RbDrawCore, RbButton;

type
  TFDireitosAcesso = class(TForm)
    DBEGridUsuarios: TRxDBGrid;
    DSUsuarios: TDataSource;
    DBEGridFormNivel: TRxDBGrid;
    DSFormNivel: TDataSource;
    BDireitos: TRbButton;
    procedure FormShow(Sender: TObject);
    procedure BDireitosClick(Sender: TObject);
    procedure DBEGridFormNivelDblClick(Sender: TObject);
    procedure DBEGridFormNivelKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGridFormNivelDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDireitosAcesso: TFDireitosAcesso;

implementation

uses UDataModule1, DateUtils;

{$R *.dfm}

procedure TFDireitosAcesso.FormShow(Sender: TObject);
begin
  DataModule1.IBQConsUsuarioDireitos.Close;
  DataModule1.IBQConsUsuarioDireitos.Open;
end;

procedure TFDireitosAcesso.BDireitosClick(Sender: TObject);
begin
  DataModule1.IBQFormNivel.Close;
  DataModule1.ClienteFormNivel.Close;
  DataModule1.IBQFormNivel.ParamByName('pnivel').AsInteger :=
  DataModule1.IBQConsUsuarioDireitosCD_NIVEL.AsInteger;
  DataModule1.ClienteFormNivel.Open;


end;

procedure TFDireitosAcesso.DBEGridFormNivelDblClick(Sender: TObject);
begin
   DataModule1.IBDFormNivel.Close;
   DataModule1.IBDFormNivel.ParamByName('pnivel').AsInteger :=
   DataModule1.ClienteFormNivelCD_FORM_NIVEL.AsInteger;
   DataModule1.IBDFormNivel.Open;
   DataModule1.IBDFormNivel.Edit;
   DataModule1.ClienteFormNivel.Open;
   DataModule1.ClienteFormNivel.Edit;

   if DataModule1.ClienteFormNivelLIBERADO.AsString = 'N' then
    begin
      DataModule1.IBDFormNivelLIBERADO.AsString := 'S';
      DataModule1.ClienteFormNivel.FieldByName('liberado').Value := 'S';
    end
   else
    begin
       DataModule1.IBDFormNivelLIBERADO.AsString := 'N';
       DataModule1.ClienteFormNivel.FieldByName('liberado').Value := 'N';
    end;

    DataModule1.IBDFormNivel.Post;
    DataModule1.ClienteFormNivel.Post;
    DataModule1.IBTTransacao.CommitRetaining;
end;

procedure TFDireitosAcesso.DBEGridFormNivelKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #32 then
    DBEGridFormNivelDblClick(sender);
end;

procedure TFDireitosAcesso.DBEGridFormNivelDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DataModule1.ClienteFormNivel.FieldByName('liberado').Value = 'N' then
    begin
      //DBEGridFormNivel.Canvas.Brush.Color := clWhite;
     // DBEGridFormNivel.DefaultDrawDataCell(Rect,DBEGridFormNivel.Columns[Datacol].Field,state);
    end
  else
    begin
      DBEGridFormNivel.Canvas.Brush.Color := clGreen;
      DBEGridFormNivel.Canvas.Font.Color := clWhite;
      DBEGridFormNivel.DefaultDrawDataCell(Rect,DBEGridFormNivel.Columns[Datacol].Field,state);
    end;
end;

end.
