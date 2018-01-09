unit ULogBaxaCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, ExtCtrls, StdCtrls, DBCtrls,
  Buttons, Mask, rxToolEdit, ADODB;

type
  TFLogBaxaCorte = class(TForm)
    PaginaControle: TPageControl;
    TbBaxaMov: TTabSheet;
    TbBaixasPen: TTabSheet;
    DBGrid: TDBGrid;
    BExportaBaxas: TBitBtn;
    DsConsUsu_TLogBaxBax: TDataSource;
    DsConUsu_TLogBaxBAx: TDataSource;
    DsConsUsu_TLogBaxPen: TDataSource;
    DBGrid1: TDBGrid;
    BConfirma: TBitBtn;
    BConfTodos: TBitBtn;
    TbTrans1001_1: TTabSheet;
    DsConsHistUsu_TLogBax: TDataSource;
    ValidaCor: TADOQuery;
    ValidaCorCODPRO: TStringField;
    TbTrans1001: TTabSheet;
    TbHistorico: TTabSheet;
    Panel1: TPanel;
    BMostrar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdTecido: TEdit;
    EdTipoMov: TComboBox;
    EdData1: TDateEdit;
    EdData2: TDateEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ConsUsu_TLogBax1001: TADOQuery;
    DsConsUsu_TLogBax1001: TDataSource;
    ConsUsu_TLogBax1001USU_SEQLOG: TIntegerField;
    ConsUsu_TLogBax1001USU_CODPRO: TStringField;
    ConsUsu_TLogBax1001USU_QTDMOV: TBCDField;
    ConsUsu_TLogBax1001USU_SITLOG: TStringField;
    ConsUsu_TLogBax1001USU_DATFEC: TDateTimeField;
    ConsUsu_TLogBax1001USU_HORFEC: TIntegerField;
    ConsUsu_TLogBax1001USU_USUFEC: TIntegerField;
    ConsUsu_TLogBax1001USU_TIPMOV: TStringField;
    ConsUsu_TLogBax1001USU_MOTMOV: TStringField;
    DsConsUsu_TLogBax1001_1: TDataSource;
    DBGrid4: TDBGrid;
    BConfTodos1001: TBitBtn;
    BConfTodos1001_1: TBitBtn;
    TbBax1001: TTabSheet;
    ConsUsu_TLogBax1001_1: TADOQuery;
    ConsUsu_TLogBax1001_1USU_SEQLOG: TIntegerField;
    ConsUsu_TLogBax1001_1USU_CODPRO: TStringField;
    ConsUsu_TLogBax1001_1USU_QTDMOV: TBCDField;
    ConsUsu_TLogBax1001_1USU_SITLOG: TStringField;
    ConsUsu_TLogBax1001_1USU_DATFEC: TDateTimeField;
    ConsUsu_TLogBax1001_1USU_HORFEC: TIntegerField;
    ConsUsu_TLogBax1001_1USU_USUFEC: TIntegerField;
    ConsUsu_TLogBax1001_1USU_TIPMOV: TStringField;
    ConsUsu_TLogBax1001_1USU_MOTMOV: TStringField;
    ConsUsu_TLogBaxPerca: TADOQuery;
    ConsUsu_TLogBaxPercaUSU_SEQLOG: TIntegerField;
    ConsUsu_TLogBaxPercaUSU_CODPRO: TStringField;
    ConsUsu_TLogBaxPercaUSU_QTDMOV: TBCDField;
    ConsUsu_TLogBaxPercaUSU_SITLOG: TStringField;
    ConsUsu_TLogBaxPercaUSU_DATFEC: TDateTimeField;
    ConsUsu_TLogBaxPercaUSU_HORFEC: TIntegerField;
    ConsUsu_TLogBaxPercaUSU_USUFEC: TIntegerField;
    ConsUsu_TLogBaxPercaUSU_TIPMOV: TStringField;
    ConsUsu_TLogBaxPercaUSU_MOTMOV: TStringField;
    DBGrid5: TDBGrid;
    DsConsUsu_TLogBaxPerca: TDataSource;
    BConfTodosPerca: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure TbBaxaMovShow(Sender: TObject);
    procedure BExportaBaxasClick(Sender: TObject);
    procedure TbBaixasPenShow(Sender: TObject);
    procedure BConfirmaClick(Sender: TObject);
    procedure BConfTodosClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BMostrarClick(Sender: TObject);
    procedure EdTecidoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TbTrans1001_1Show(Sender: TObject);
    procedure TbTrans1001Show(Sender: TObject);
    procedure BConfTodos1001Click(Sender: TObject);
    procedure BConfTodos1001_1Click(Sender: TObject);
    procedure TbBax1001Show(Sender: TObject);
    procedure BConfTodosPercaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogBaxaCorte: TFLogBaxaCorte;

implementation

uses UDm1, UPrincipal, UDm;

{$R *.dfm}

procedure TFLogBaxaCorte.FormShow(Sender: TObject);
begin
     FPrincipal.GravaTela(FLogBaxaCorte.Name,FPrincipal.vnCodCon);

     PaginaControle.ActivePageIndex := 0;
end;

procedure TFLogBaxaCorte.TbBax1001Show(Sender: TObject);
begin
  ConsUsu_TLogBaxPerca.Close;
  ConsUsu_TLogBaxPerca.Open;

end;

procedure TFLogBaxaCorte.TbBaxaMovShow(Sender: TObject);
begin
    Dm1.ConsUsu_TLogBaxBax.Close;
    Dm1.ConsUsu_TLogBaxBax.Open;

end;

procedure TFLogBaxaCorte.TbTrans1001Show(Sender: TObject);
begin
  ConsUsu_TLogBax1001_1.Close;
  ConsUsu_TLogBax1001_1.Open;
end;

procedure TFLogBaxaCorte.TbTrans1001_1Show(Sender: TObject);
begin
    ConsUsu_TLogBax1001.Close;
    ConsUsu_TLogBax1001.Open;
end;

procedure TFLogBaxaCorte.BExportaBaxasClick(Sender: TObject);
begin

if Application.MessageBox('Deseja realmente exportar?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
   begin
     Dm1.ConsUsu_TLogBaxBax.First;
     while not Dm1.ConsUsu_TLogBaxBax.Eof do
       begin
          Dm1.ConsUsu_TLogBaxBax.Edit;
          Dm1.ConsUsu_TLogBaxBaxUSU_SITLOG.Value := 'T';
          Dm1.ConsUsu_TLogBaxBax.Post;

          Dm1.ConsUsu_TLogBaxBax.Next;
       end;
       
      Dm1.ConsUsu_TLogBaxBax.Close;
      Dm1.ConsUsu_TLogBaxBax.Open;
   end;
end;

procedure TFLogBaxaCorte.TbBaixasPenShow(Sender: TObject);
begin
    Dm1.ConsUsu_TLogBaxPen.Close;
    Dm1.ConsUsu_TLogBaxPen.Open;

end;

procedure TFLogBaxaCorte.BConfirmaClick(Sender: TObject);
var Hora : String;
begin
if not Dm1.ConsUsu_TLogBaxPen.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente confirmar baixa?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
       begin
         Dm1.CadUsu_TLogBax.Close;
         Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxPenUSU_SEQLOG.Value;
         Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TLogBaxPenUSU_CODPRO.Value;
         Dm1.CadUsu_TLogBax.Open;
         Dm1.CadUsu_TLogBax.Edit;
         Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'F';
         Dm1.CadUsu_TLogBaxUSU_DATFEC.Value := Date;
         Hora := TimeToStr(Time);
         Dm1.CadUsu_TLogBaxUSU_HORFEC.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
         Dm1.CadUsu_TLogBaxUSU_USUFEC.Value := FPrincipal.cd_usuario;
         Dm1.CadUsu_TLogBax.Post;
       end;
         Dm1.ConsUsu_TLogBaxPen.Close;
         Dm1.ConsUsu_TLogBaxPen.Open;
  end;
end;

procedure TFLogBaxaCorte.BConfTodos1001Click(Sender: TObject);
var Hora : String;
begin
if not ConsUsu_TLogBax1001.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente confirmar baixa de todos?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
       begin
       ConsUsu_TLogBax1001.First;
       while not ConsUsu_TLogBax1001.Eof do
          begin
             Dm1.CadUsu_TLogBax.Close;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := ConsUsu_TLogBax1001USU_SEQLOG.Value;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := ConsUsu_TLogBax1001USU_CODPRO.Value;
             Dm1.CadUsu_TLogBax.Open;
             Dm1.CadUsu_TLogBax.Edit;
             Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'F';
             Dm1.CadUsu_TLogBaxUSU_DATFEC.Value := Date;
             Hora := TimeToStr(Time);
             Dm1.CadUsu_TLogBaxUSU_HORFEC.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
             Dm1.CadUsu_TLogBaxUSU_USUFEC.Value := FPrincipal.cd_usuario;
             Dm1.CadUsu_TLogBax.Post;
             ConsUsu_TLogBax1001.Next;
          end;
       end;
         ConsUsu_TLogBax1001.Close;
         ConsUsu_TLogBax1001.Open;
  end;

end;

procedure TFLogBaxaCorte.BConfTodos1001_1Click(Sender: TObject);
var Hora : String;
begin
if not ConsUsu_TLogBax1001_1.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente confirmar baixa de todos?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
       begin
       ConsUsu_TLogBax1001_1.First;
       while not ConsUsu_TLogBax1001_1.Eof do
          begin
             Dm1.CadUsu_TLogBax.Close;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := ConsUsu_TLogBax1001_1USU_SEQLOG.Value;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := ConsUsu_TLogBax1001_1USU_CODPRO.Value;
             Dm1.CadUsu_TLogBax.Open;
             Dm1.CadUsu_TLogBax.Edit;
             Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'F';
             Dm1.CadUsu_TLogBaxUSU_DATFEC.Value := Date;
             Hora := TimeToStr(Time);
             Dm1.CadUsu_TLogBaxUSU_HORFEC.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
             Dm1.CadUsu_TLogBaxUSU_USUFEC.Value := FPrincipal.cd_usuario;
             Dm1.CadUsu_TLogBax.Post;
             ConsUsu_TLogBax1001_1.Next;
          end;
       end;
         ConsUsu_TLogBax1001_1.Close;
         ConsUsu_TLogBax1001_1.Open;
  end;

end;

procedure TFLogBaxaCorte.BConfTodosClick(Sender: TObject);
var Hora : String;
begin
if not Dm1.ConsUsu_TLogBaxPen.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente confirmar baixa de todos?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
       begin
       Dm1.ConsUsu_TLogBaxPen.First;
       while not Dm1.ConsUsu_TLogBaxPen.Eof do
          begin
             Dm1.CadUsu_TLogBax.Close;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := Dm1.ConsUsu_TLogBaxPenUSU_SEQLOG.Value;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := Dm1.ConsUsu_TLogBaxPenUSU_CODPRO.Value;
             Dm1.CadUsu_TLogBax.Open;
             Dm1.CadUsu_TLogBax.Edit;
             Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'F';
             Dm1.CadUsu_TLogBaxUSU_DATFEC.Value := Date;
             Hora := TimeToStr(Time);
             Dm1.CadUsu_TLogBaxUSU_HORFEC.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
             Dm1.CadUsu_TLogBaxUSU_USUFEC.Value := FPrincipal.cd_usuario;
             Dm1.CadUsu_TLogBax.Post;
             Dm1.ConsUsu_TLogBaxPen.Next;
          end;
       end;
         Dm1.ConsUsu_TLogBaxPen.Close;
         Dm1.ConsUsu_TLogBaxPen.Open;
  end;
end;

procedure TFLogBaxaCorte.BConfTodosPercaClick(Sender: TObject);
var Hora : String;
begin
if not ConsUsu_TLogBaxPerca.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente confirmar baixa de todos?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = idyes then
       begin
       ConsUsu_TLogBaxPerca.First;
       while not ConsUsu_TLogBaxPerca.Eof do
          begin
             Dm1.CadUsu_TLogBax.Close;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('seqlog').Value := ConsUsu_TLogBaxPercaUSU_SEQLOG.Value;
             Dm1.CadUsu_TLogBax.Parameters.ParamByName('codpro').Value := ConsUsu_TLogBaxPercaUSU_CODPRO.Value;
             Dm1.CadUsu_TLogBax.Open;
             Dm1.CadUsu_TLogBax.Edit;
             Dm1.CadUsu_TLogBaxUSU_SITLOG.Value := 'F';
             Dm1.CadUsu_TLogBaxUSU_DATFEC.Value := Date;
             Hora := TimeToStr(Time);
             Dm1.CadUsu_TLogBaxUSU_HORFEC.Value := (StrToInt(Copy(Hora,1,2))*60) + StrToInt(Copy(Hora,4,2));
             Dm1.CadUsu_TLogBaxUSU_USUFEC.Value := FPrincipal.cd_usuario;
             Dm1.CadUsu_TLogBax.Post;
             ConsUsu_TLogBaxPerca.Next;
          end;
       end;
         ConsUsu_TLogBaxPerca.Close;
         ConsUsu_TLogBaxPerca.Open;
  end;

end;

procedure TFLogBaxaCorte.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       begin
         BConfirma.Click;
       end;
end;

procedure TFLogBaxaCorte.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
      if Dm1.ConsUsu_TLogBaxBaxUSU_MOTMOV.Value = 'SAIDA POR ERRO NA PRODUÇÃO ' then
         begin
           DBGrid.Canvas.Font.Color := clRed;
           DBGrid.DefaultDrawDataCell(Rect,DBGrid.Columns[Datacol].Field,state);

        end;

end;

procedure TFLogBaxaCorte.BMostrarClick(Sender: TObject);
begin
if EdData1.Date = 0 then
       begin//1
         Application.MessageBox('Informe a Data Inicial.','Aviso', MB_ICONWARNING+MB_OK);
         EdData1.SetFocus;
       end//1
    else if EdData2.Date = 0 then
            begin//2
               Application.MessageBox('Informe a Data Final.','Aviso', MB_ICONWARNING+MB_OK);
               EdData2.SetFocus;
            end//2
         else
            begin//3
               Dm1.ConsHistUsu_TLogBax.Close;
               Dm1.ConsHistUsu_TLogBax.SQL.Clear;
               Dm1.ConsHistUsu_TLogBax.SQL.Add('select usu_tlogbax.*, usu_tr999usu.usu_nomusu');
               Dm1.ConsHistUsu_TLogBax.SQL.Add('from usu_tlogbax');
               Dm1.ConsHistUsu_TLogBax.SQL.Add('inner join usu_tr999usu on usu_tr999usu.usu_codusu = usu_tlogbax.usu_usufec');
               Dm1.ConsHistUsu_TLogBax.SQL.Add('where');
               Dm1.ConsHistUsu_TLogBax.SQL.Add('usu_tlogbax.usu_datfec between :datfec1 and :datfec2');
               Dm1.ConsHistUsu_TLogBax.Parameters.ParamByName('datfec1').Value := EdData1.Date;
               Dm1.ConsHistUsu_TLogBax.Parameters.ParamByName('datfec2').Value := EdData2.Date;
               if EdTipoMov.ItemIndex = 1 then
                 begin
                   Dm1.ConsHistUsu_TLogBax.SQL.Add('and usu_tlogbax.usu_tipmov = :tipmov');
                   Dm1.ConsHistUsu_TLogBax.Parameters.ParamByName('tipmov').Value := 'S';
                 end
               else if EdTipoMov.ItemIndex = 2 then
                      begin
                         Dm1.ConsHistUsu_TLogBax.SQL.Add('and usu_tlogbax.usu_tipmov = :tipmov');
                         Dm1.ConsHistUsu_TLogBax.Parameters.ParamByName('tipmov').Value := 'E';
                      end;
               if EdTecido.Text <> '' then
                  begin
                      Dm1.ConsHistUsu_TLogBax.SQL.Add('and usu_tlogbax.usu_codpro = :codpro');
                      Dm1.ConsHistUsu_TLogBax.Parameters.ParamByName('codpro').Value := EdTecido.Text;
                  end;
               Dm1.ConsHistUsu_TLogBax.SQL.Add('order by usu_tlogbax.usu_codpro');
               Dm1.ConsHistUsu_TLogBax.Open;


            end;//3
end;

procedure TFLogBaxaCorte.EdTecidoExit(Sender: TObject);
var vnCodPro : Integer;
begin
if TryStrToInt(EdTecido.Text,vnCodPro) then
      begin
         ValidaCor.Close;
         ValidaCor.Parameters.ParamByName('codpro').Value := vnCodPro;
         ValidaCor.Open;
         if ValidaCor.IsEmpty then
            begin
               Application.MessageBox('Nº de Cor Inválido','Aviso', MB_ICONWARNING+MB_OK);
               EdTecido.Clear;
               EdTecido.SetFocus;
            end;
      end;
end;

procedure TFLogBaxaCorte.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFLogBaxaCorte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FPrincipal.ApagaTela(FLogBaxaCorte.Name,FPrincipal.vnCodCon);
end;

end.
