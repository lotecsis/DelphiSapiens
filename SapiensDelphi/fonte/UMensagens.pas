unit UMensagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, DB, RbDrawCore,
  RbButton, RXDBCtrl;

type
  TFMensagens = class(TForm)
    PaginaControle: TPageControl;
    TbEnvio: TTabSheet;
    TbMensagens: TTabSheet;
    Label1: TLabel;
    DSMensagem: TDataSource;
    DBGrid1: TDBGrid;
    DSUsuarios: TDataSource;
    BEnviar: TRbButton;
    EdMensagem: TMemo;
    BInserir: TRbButton;
    BSair: TRbButton;
    DBEGridMensagensRecebidas: TRxDBGrid;
    DsConsMensagem: TDataSource;
    BApagar: TRbButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BEnviarClick(Sender: TObject);
    procedure TbEnvioShow(Sender: TObject);
    procedure BInserirClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure TbMensagensShow(Sender: TObject);
    procedure DBEGridMensagensRecebidasDblClick(Sender: TObject);
    procedure DBEGridMensagensRecebidasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEGridMensagensRecebidasKeyPress(Sender: TObject; var Key: Char);
    procedure BApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMensagens: TFMensagens;

implementation

uses UDataModule4, UPrincipal, UDataModule1, UMensagemAberta;

{$R *.dfm}

procedure TFMensagens.DBGrid1CellClick(Column: TColumn);
begin
DataModule4.ClienteUsuarioMensagem.Open;
DataModule4.ClienteUsuarioMensagem.Edit;

    if (DataModule4.ClienteUsuarioMensagem.FieldByName('tika').value = '�') then
        DataModule4.ClienteUsuarioMensagem.FieldByName('tika').value := null
    else
        DataModule4.ClienteUsuarioMensagem.FieldByName('tika').value := '�';
DataModule4.ClienteUsuarioMensagem.Post;
end;

procedure TFMensagens.BEnviarClick(Sender: TObject);
begin
  DataModule4.ClienteUsuarioMensagem.First;
  while not (DataModule4.ClienteUsuarioMensagem.Eof) do
    begin
        if DataModule4.ClienteUsuarioMensagemTIKA.AsString <> '' then
          begin
            DataModule4.IBDMensagens.Open;
            DataModule4.IBDMensagens.Insert;
            DataModule4.IBDMensagensCD_USUARIO.AsInteger :=
            DataModule4.ClienteUsuarioMensagemCD_USUARIO.AsInteger;
            DataModule4.IBDMensagensMENSAGEM.AsString := EdMensagem.Text;
            DataModule4.IBDMensagensDT_MENSAGEM.AsDateTime := Date;
            DataModule4.IBDMensagensHR_MENSAGEM.AsDateTime := Time;
            DataModule4.IBDMensagensSITUACAO.AsString := 'F';
            DataModule4.IBDMensagensCD_MENSAGEM.AsInteger := 0;
            DataModule4.IBDMensagensCD_USUARIO_ENVIO.AsInteger := FPrincipal.cd_usuario;
            DataModule4.IBDMensagens.Post;

          end;
          DataModule4.ClienteUsuarioMensagem.Next;
    end;
    DataModule1.IBTTransacao.CommitRetaining;

    BInserir.Enabled := true;
    BEnviar.Enabled := false;
end;

procedure TFMensagens.TbEnvioShow(Sender: TObject);
begin
EdMensagem.Clear;

end;

procedure TFMensagens.BInserirClick(Sender: TObject);
begin
 DataModule4.IBQConsUsuarioMensagem.Close;
  DataModule4.ClienteUsuarioMensagem.Close;
  DataModule4.ClienteUsuarioMensagem.Open;

  EdMensagem.Clear;
  EdMensagem.SetFocus;

  BEnviar.Enabled := true;
  BInserir.Enabled := false;
end;

procedure TFMensagens.BSairClick(Sender: TObject);
begin
Close;
end;

procedure TFMensagens.TbMensagensShow(Sender: TObject);
begin

  DataModule4.IBQConsMensagens.Close;
  DataModule4.IBQConsMensagens.ParamByName('pusuario').AsInteger := FPrincipal.cd_usuario;
  DataModule4.IBQConsMensagens.Open;
end;

procedure TFMensagens.DBEGridMensagensRecebidasDblClick(Sender: TObject);
begin
  FMensagemAberta := TFMensagemAberta.Create(Self);
  FMensagemAberta.ShowModal;
  FreeAndNil(FMensagemAberta);

  if DataModule4.IBQConsMensagensSITUACAO.AsString = 'F' then
  begin
  DataModule4.IBDMensagens.Close;
  DataModule4.IBDMensagens.ParamByName('pmensagem').AsInteger :=
  DataModule4.IBQConsMensagensCD_MENSAGEM.AsInteger;
  DataModule4.IBDMensagens.Open;
  DataModule4.IBDMensagens.Edit;
  DataModule4.IBDMensagensSITUACAO.AsString := 'A';
  DataModule4.IBDMensagens.Post;
  DataModule1.IBTTransacao.CommitRetaining;

  DataModule4.IBQConsMensagens.Close;
  DataModule4.IBQConsMensagens.ParamByName('pusuario').AsInteger := FPrincipal.cd_usuario;
  DataModule4.IBQConsMensagens.Open;

end;


end;

procedure TFMensagens.DBEGridMensagensRecebidasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if DataModule4.IBQConsMensagens.FieldByName('situacao').Value = 'F' then
    begin
      DBEGridMensagensRecebidas.Canvas.brush.Color := $0080FFFF;
      DBEGridMensagensRecebidas.Canvas.Font.Color := clBlack;
      DBEGridMensagensRecebidas.DefaultDrawDataCell(Rect,DBEGridMensagensRecebidas.Columns[Datacol].Field,state);
    end;
end;

procedure TFMensagens.DBEGridMensagensRecebidasKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       DBEGridMensagensRecebidasDblClick(sender);
    end;
end;

procedure TFMensagens.BApagarClick(Sender: TObject);
begin
if DataModule4.IBQConsMensagensSITUACAO.AsString = 'F' then
  begin
    MessageDlg('Mensagem n�o pode ser excluida '#13'antes de ser aberta',mtWarning,[mbok],0);
  end
else
  begin
  DataModule4.IBQApagaMensagens.Open;
  DataModule4.IBQApagaMensagens.Close;
  DataModule4.IBQApagaMensagens.ParamByName('pmensagem').AsInteger :=
  DataModule4.IBQConsMensagensCD_MENSAGEM.AsInteger;
  DataModule4.IBQApagaMensagens.Open;

  DataModule4.IBQConsMensagens.Close;
  DataModule4.IBQConsMensagens.ParamByName('pusuario').AsInteger := FPrincipal.cd_usuario;
  DataModule4.IBQConsMensagens.Open;


 end;
end;

procedure TFMensagens.FormShow(Sender: TObject);
begin
  PaginaControle.ActivePageIndex := 1;
end;

procedure TFMensagens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFMensagens.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
     Close;
  end;
end;

end.
