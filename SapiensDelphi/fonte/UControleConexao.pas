unit UControleConexao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, UDm, DB, ADODB,
  DBClient, Mask, DBCtrls, Buttons, ImgList, Gauges;

type
  TFControleConexao = class(TForm)
    PaginaControle: TPageControl;
    TbConexao: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ConsR911sec: TADOQuery;
    ConsR911secNUMSEC: TBCDField;
    ConsR911secDATTIM: TFMTBCDField;
    ConsR911secCOMNAM: TStringField;
    ConsR911secUSRNAM: TStringField;
    ConsR911secAPPNAM: TStringField;
    ConsR911secAPPUSR: TStringField;
    ConsR911secIDINST: TIntegerField;
    DsConsR911sec: TDataSource;
    EdTotLog: TLabel;
    ConsR911secTOTLOG: TFMTBCDField;
    LMaxConec: TLabel;
    TbOpcoes: TTabSheet;
    ClientMaxConec: TClientDataSet;
    ClientMaxConecMaxConec: TIntegerField;
    DsClientMaxConec: TDataSource;
    ClientUsuariosAdm: TClientDataSet;
    ClientUsuariosAdmAppUsr: TStringField;
    DsClientUsuariosAdm: TDataSource;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    BLiberar: TBitBtn;
    ClientR911Sec: TClientDataSet;
    ClientR911SecNumSec: TIntegerField;
    ClientR911SecDatTim: TFloatField;
    ClientR911SecComNam: TStringField;
    ClientR911SecUsrNam: TStringField;
    ClientR911SecAppNam: TStringField;
    ClientR911SecAppUsr: TStringField;
    ClientR911SecIDInst: TIntegerField;
    DsClientR911Sec: TDataSource;
    BBloquear: TBitBtn;
    cadR911Sec: TADOQuery;
    cadR911SecNUMSEC: TBCDField;
    cadR911SecDATTIM: TFMTBCDField;
    cadR911SecCOMNAM: TStringField;
    cadR911SecUSRNAM: TStringField;
    cadR911SecAPPNAM: TStringField;
    cadR911SecAPPUSR: TStringField;
    cadR911SecIDINST: TIntegerField;
    Timer1: TTimer;
    TControle: TTimer;
    LTempo: TLabel;
    ProgressBar1: TProgressBar;
    ClientTempoEspera: TClientDataSet;
    ClientTempoEsperaTempEsp: TIntegerField;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DsTempEsp: TDataSource;
    Label7: TLabel;
    BAtualiza: TBitBtn;
    btnDerrubarUsuario: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BLiberarClick(Sender: TObject);
    procedure BBloquearClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TControleTimer(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BAtualizaClick(Sender: TObject);
    procedure btnDerrubarUsuarioClick(Sender: TObject);
  private
    { Private declarations }
    vnTempo : integer;
  public
    { Public declarations }
  end;

var
  FControleConexao: TFControleConexao;

implementation

{$R *.dfm}

procedure TFControleConexao.BAtualizaClick(Sender: TObject);
begin
    ConsR911sec.Close;
    ConsR911sec.Open;
end;

procedure TFControleConexao.BBloquearClick(Sender: TObject);
begin
     ClientR911Sec.First;
     while not ClientR911Sec.Eof do
       begin//1
       cadR911Sec.Close;
       cadR911Sec.Parameters.ParamByName('numsec').Value := ClientR911SecNumSec.Value;
       cadR911Sec.Open;
       if not cadR911Sec.IsEmpty then
          begin//2
            cadR911Sec.Edit;
            cadR911SecAPPUSR.Value := ClientR911SecAppUsr.AsString;
            cadR911Sec.Post;
          end;//2


        ClientR911Sec.Delete;
       end;//1
      ConsR911sec.Close;
      ConsR911sec.Open;

      vnTempo := ClientTempoEsperaTempEsp.Value;
      TControle.Enabled := false;
      ProgressBar1.Position := 0;
end;

procedure TFControleConexao.BitBtn1Click(Sender: TObject);
begin
ClientMaxConec.Open;
ClientMaxConec.Insert;
end;

procedure TFControleConexao.BitBtn2Click(Sender: TObject);
begin
ClientMaxConec.Post;
end;

procedure TFControleConexao.BitBtn3Click(Sender: TObject);
begin
  ClientMaxConec.Delete;
end;

procedure TFControleConexao.BLiberarClick(Sender: TObject);
var vnQtdEsp, I : integer;
     vbUsuAdm : Boolean;
begin
  if ConsR911secTOTLOG.AsInteger >= ClientMaxConecMaxConec.AsInteger then
     begin//1

        ConsR911sec.Close;
        ConsR911sec.Open;

        vnQtdEsp := ConsR911secTOTLOG.AsInteger - ClientMaxConecMaxConec.AsInteger;

         ConsR911sec.First;
         I := 0;
         while I <= vnQtdEsp do
           begin//2
              ClientUsuariosAdm.First;
              vbUsuAdm := false;
              while not ClientUsuariosAdm.Eof do
                 begin//3
                     if (ConsR911secAPPUSR.Value = ClientUsuariosAdmAppUsr.Value) or (ConsR911secAPPUSR.Value = '') or (ConsR911secAPPUSR.Value = ' ') or (ConsR911secAPPUSR.Value = '  ') or (ConsR911secAPPUSR.Value = Null) then
                        vbUsuAdm := true;

                     ClientUsuariosAdm.Next;
                 end;//3
                 if vbUsuAdm = false then
                    begin//4
                     ClientR911Sec.Open;
                     ClientR911Sec.Insert;
                     ClientR911SecNumSec.Value := ConsR911secNUMSEC.AsInteger;
                     ClientR911SecDatTim.Value := ConsR911secDATTIM.AsFloat;
                     ClientR911SecComNam.Value := ConsR911secCOMNAM.AsString;
                     ClientR911SecUsrNam.Value := ConsR911secUSRNAM.AsString;
                     ClientR911SecAppNam.Value := ConsR911secAPPNAM.AsString;
                     ClientR911SecAppUsr.Value := ConsR911secAPPUSR.AsString;
                     ClientR911SecIDInst.Value := ConsR911secIDINST.AsInteger;
                     ClientR911Sec.Post;

                      ConsR911sec.Edit;
                      ConsR911secAPPUSR.Value := '';
                      ConsR911sec.Post;
                      I := I + 1;

                    end;//4
            ConsR911sec.Next;
           end;//2

            ClientR911Sec.Close;
            ClientR911Sec.Open;

            vnTempo := 0;
            ProgressBar1.Position := 0;
            TControle.Enabled := true;

     end;//1


end;

procedure TFControleConexao.btnDerrubarUsuarioClick(Sender: TObject);
begin
  Dm.ConsSql.Close;
  Dm.ConsSql.SQL.Clear;
  Dm.ConsSql.SQL.Add('delete from r911mod where numsec = :numsec');
  Dm.ConsSql.Parameters.ParamByName('numsec').Value := ConsR911secNUMSEC.Value;
  Dm.ConsSql.ExecSQL;

  Dm.ConsSql.Close;
  Dm.ConsSql.SQL.Clear;
  Dm.ConsSql.SQL.Add('delete from r911sec where numsec = :numsec');
  Dm.ConsSql.Parameters.ParamByName('numsec').Value := ConsR911secNUMSEC.Value;
  Dm.ConsSql.ExecSQL;

  BAtualiza.Click;

end;

procedure TFControleConexao.DBEdit1Exit(Sender: TObject);
begin
  if ClientMaxConec.State in [dsedit] then
    begin
      ClientMaxConec.Post;
    end;
    LMaxConec.Caption := IntToStr(ClientMaxConecMaxConec.Value);
end;

procedure TFControleConexao.DBEdit2Exit(Sender: TObject);
begin
  if ClientTempoEspera.State in [dsedit] then
     begin
       ClientTempoEspera.Post;
       ProgressBar1.Max := ClientTempoEsperaTempEsp.Value;
     end;
end;

procedure TFControleConexao.FormShow(Sender: TObject);
begin
    ConsR911sec.Close;
    ConsR911sec.Open;

    EdTotLog.Caption := IntToStr(ConsR911secTOTLOG.AsInteger);

    ClientMaxConec.Close;
    ClientMaxConec.Open;
    if ClientMaxConec.IsEmpty then
       begin
         ClientMaxConec.Insert;
         ClientMaxConecMaxConec.Value := 1;
         ClientMaxConec.Post;
       end;

     ClientTempoEspera.Close;
     ClientTempoEspera.Open;
     if ClientTempoEspera.IsEmpty then
        begin
          ClientTempoEspera.Insert;
          ClientTempoEsperaTempEsp.Value := 0;
          ClientTempoEspera.Post;
        end;

   LMaxConec.Caption := IntToStr(ClientMaxConecMaxConec.Value);

   PaginaControle.ActivePageIndex := 0;

   ClientUsuariosAdm.Close;
   ClientUsuariosAdm.Open;


   deletefile('C:\DelphiSapiens\SapiensDelphi\CtrConec\R911sec.xml');

   TControle.Enabled := false;

   ProgressBar1.Max := ClientTempoEsperaTempEsp.Value;
end;

procedure TFControleConexao.TControleTimer(Sender: TObject);
begin
  vnTempo := vnTempo + 1;
  ProgressBar1.Position := ProgressBar1.Position + 1;
  if vnTempo = ClientTempoEsperaTempEsp.AsInteger then
     begin

       BBloquear.Click;
       ProgressBar1.Position := 0;
     end;
end;

procedure TFControleConexao.Timer1Timer(Sender: TObject);
begin
    ConsR911sec.Close;
    ConsR911sec.Open;
end;

end.
