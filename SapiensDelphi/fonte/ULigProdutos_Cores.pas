unit ULigProdutos_Cores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCGrids, DBCtrls, Mask,
  ComCtrls, DB, DBClient, ADODB, CheckLst, Provider;

type
  TFLigProdutos_Cores = class(TForm)
    PaginaControle: TPageControl;
    TbLigacoes: TTabSheet;
    TbConsulta: TTabSheet;
    EdCodCor1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    EdCodCor2: TEdit;
    BTiraDeLinha: TBitBtn;
    DsClientProdutos: TDataSource;
    DsLivre: TDataSource;
    BAddLig: TBitBtn;
    BExcLig: TBitBtn;
    Label3: TLabel;
    EdCodPro: TEdit;
    LDsCodPro: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ConsTecLig: TADOQuery;
    ConsTecLigUSU_CODTEC: TStringField;
    DsConsTecLig: TDataSource;
    BMostrar: TBitBtn;
    ConsTecDes: TADOQuery;
    ConsTecDesCODPRO: TStringField;
    DsConsTecDes: TDataSource;
    BPesqProd: TBitBtn;
    dbg1: TDBGrid;
    edtCodPro: TEdit;
    edtDesPro: TEdit;
    btnAddClientProduto: TBitBtn;
    btnConsPro: TBitBtn;
    ClientDerivacoes: TClientDataSet;
    ClientDerivacoesCodDer: TStringField;
    ClientDerivacoesinChek: TStringField;
    dsClientDerivacoes: TDataSource;
    dbgDerivacoes: TDBGrid;
    ClientDerivacoesvaImg: TStringField;
    ConsDer: TADOQuery;
    ConsDerCODDER: TStringField;
    dbg2: TDBGrid;
    dsConsDer: TDataSource;
    ClientConsTecDes: TClientDataSet;
    ProviderConsTecDes: TDataSetProvider;
    ClientConsTecDesCODPRO: TStringField;
    ProviderConsTecLig: TDataSetProvider;
    ClientConsTecLig: TClientDataSet;
    ClientConsTecLigUSU_CODTEC: TStringField;
    procedure EdCodCor1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BTiraDeLinhaClick(Sender: TObject);
    procedure BAddLigClick(Sender: TObject);
    procedure BExcLigClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure BMostrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BPesqProdClick(Sender: TObject);
    procedure edtCodProExit(Sender: TObject);
    procedure btnAddClientProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsProClick(Sender: TObject);
    procedure dbgDerivacoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDerivacoesCellClick(Column: TColumn);
    procedure ConsDerAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLigProdutos_Cores: TFLigProdutos_Cores;

implementation

uses UDmOra, UDmFire, UConsGeralNfEnt;

{$R *.dfm}

procedure TFLigProdutos_Cores.BAddLigClick(Sender: TObject);
begin
           DmOra.ClientProdutos.First;
           while not DmOra.ClientProdutos.Eof do
              begin//3
                DmOra.CadUsu_TDerCor.Close;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codemp').Value := 1;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codpro').Value := DmOra.ClientProdutosCodPro.AsString;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codder').Value := DmOra.ClientProdutosCodDer.AsString;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codtec').Value := trim(EdCodCor1.Text);
                DmOra.CadUsu_TDerCor.Open;
                if DmOra.CadUsu_TDerCor.IsEmpty then
                   begin//4
                     DmOra.CadUsu_TDerCor.Insert;
                     DmOra.CadUsu_TDerCorUSU_CODEMP.Value := 1;
                     DmOra.CadUsu_TDerCorUSU_CODPRO.Value := DmOra.ClientProdutosCodPro.AsString;
                     DmOra.CadUsu_TDerCorUSU_CODDER.Value := DmOra.ClientProdutosCodDer.AsString;
                     DmOra.CadUsu_TDerCorUSU_CODTEC.Value := trim(EdCodCor1.Text);
                     DmOra.CadUsu_TDerCorUSU_SITTEC.Value := 'A';
                     DmOra.CadUsu_TDerCorUSU_DESTEC.Value := '';
                     DmOra.CadUsu_TDerCor.Post;

                     //grava o log do movimento
                     DmFire.CadE075LLDC.Open;
                     DmFire.CadE075LLDC.Insert;
                     DmFire.CadE075LLDCCODEMP.Value := 1;
                     DmFire.CadE075LLDCCODPRO.Value := DmOra.ClientProdutosCodPro.Value;
                     DmFire.CadE075LLDCCODDER.Value := DmOra.ClientProdutosCodDer.Value;
                     DmFire.CadE075LLDCCODTEC.Value := trim(EdCodCor1.Text);
                     DmFire.CadE075LLDCDATMOV.Value := date;
                     DmFire.CadE075LLDCTIPMOV.Value := 'L';
                     DmFire.ConsSql.Close;
                     DmFire.ConsSql.SQL.Clear;
                     DmFire.ConsSql.SQL.Add('select nummov from e075lldc where datmov = :datmov order by nummov desc');
                     DmFire.ConsSql.ParamByName('datmov').Value := date;
                     DmFire.ConsSql.Open;
                     if DmFire.ConsSql.IsEmpty then
                        DmFire.CadE075LLDCNUMMOV.Value := 1
                     else
                        DmFire.CadE075LLDCNUMMOV.Value := DmFire.ConsSql.FieldByName('nummov').AsInteger + 1;

                     DmFire.CadE075LLDC.Post;
                     DmFire.IBTransacao.CommitRetaining;
                   end;//4

                DmOra.ClientProdutos.Next;
              end;
             DmOra.ClientProdutos.First;
             MessageDlg('Ok Processado!',mtInformation,[mbOK],0);
end;

procedure TFLigProdutos_Cores.BExcLigClick(Sender: TObject);
begin

           DmOra.ClientProdutos.First;
           while not DmOra.ClientProdutos.Eof do
              begin//6
                DmOra.CadUsu_TDerCor.Close;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codemp').Value := 1;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codpro').Value := DmOra.ClientProdutosCodPro.AsString;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codder').Value := DmOra.ClientProdutosCodDer.AsString;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codtec').Value := trim(EdCodCor1.Text);
                DmOra.CadUsu_TDerCor.Open;
                if not DmOra.CadUsu_TDerCor.IsEmpty then
                   begin//7
                     DmOra.CadUsu_TDerCor.Delete;

                     //grava o log do movimento
                     DmFire.CadE075LLDC.Open;
                     DmFire.CadE075LLDC.Insert;
                     DmFire.CadE075LLDCCODEMP.Value := 1;
                     DmFire.CadE075LLDCCODPRO.Value := DmOra.ClientProdutosCodPro.Value;
                     DmFire.CadE075LLDCCODDER.Value := DmOra.ClientProdutosCodDer.Value;
                     DmFire.CadE075LLDCCODTEC.Value := trim(EdCodCor1.Text);
                     DmFire.CadE075LLDCDATMOV.Value := date;
                     DmFire.CadE075LLDCTIPMOV.Value := 'D';
                     DmFire.ConsSql.Close;
                     DmFire.ConsSql.SQL.Clear;
                     DmFire.ConsSql.SQL.Add('select nummov from e075lldc where datmov = :datmov order by nummov desc');
                     DmFire.ConsSql.ParamByName('datmov').Value := date;
                     DmFire.ConsSql.Open;
                     if DmFire.ConsSql.IsEmpty then
                        DmFire.CadE075LLDCNUMMOV.Value := 1
                     else
                        DmFire.CadE075LLDCNUMMOV.Value := DmFire.ConsSql.FieldByName('nummov').AsInteger + 1;

                     DmFire.CadE075LLDC.Post;
                     DmFire.IBTransacao.CommitRetaining;
                   end;

                DmOra.ClientProdutos.Next;
              end;
             DmOra.ClientProdutos.First;
             MessageDlg('Ok Processado!',mtWarning,[mbOK],0);

end;

procedure TFLigProdutos_Cores.BMostrarClick(Sender: TObject);
begin
if (trim(EdCodPro.Text) <> '')  and (not ConsDer.IsEmpty) then
   begin
     ClientConsTecLig.Close;
     ConsTecLig.Close;
     ConsTecLig.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
     ConsTecLig.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
     ConsTecLig.Open;
     ClientConsTecLig.Open;

     ClientConsTecDes.Close;
     ConsTecDes.Close;
     ConsTecDes.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
     ConsTecDes.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
     ConsTecDes.Open;
     ClientConsTecDes.Open;
   end;



end;

procedure TFLigProdutos_Cores.BPesqProdClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori in (00,01)';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'EdCodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FLigProdutos_Cores';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := EdCodPro;

end;

procedure TFLigProdutos_Cores.BTiraDeLinhaClick(Sender: TObject);
begin
  if trim(EdCodCor2.Text) <> '' then
     begin//1
        DmOra.ConsSql.Close;
        DmOra.ConsSql.SQL.Clear;
        DmOra.ConsSql.SQL.Add('select codpro,despro from e075pro where codpro = :codpro');
        DmOra.ConsSql.Parameters.ParamByName('codpro').Value := trim(EdCodCor2.Text);
        DmOra.ConsSql.Open;
        if DmOra.ConsSql.IsEmpty then
           begin//2
             MessageDlg('Cor não encontrada!',mtWarning,[mbOK],0);
             ActiveControl := EdCodCor2;
           end//2
        else
           begin//3
              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('select * from usu_tdercor where usu_codtec = :codtec');
              DmOra.ConsSql.Parameters.ParamByName('codtec').Value := trim(EdCodCor2.Text);
              DmOra.ConsSql.Open;
              DmOra.ConsSql.First;
              while not DmOra.ConsSql.Eof do
                 begin//4
                   DmOra.CadUsu_TDerCor.Close;
                   DmOra.CadUsu_TDerCor.Parameters.ParamByName('codemp').Value := DmOra.ConsSql.FieldByName('USU_CODEMP').Value;
                   DmOra.CadUsu_TDerCor.Parameters.ParamByName('codpro').Value := DmOra.ConsSql.FieldByName('USU_CODPRO').Value;
                   DmOra.CadUsu_TDerCor.Parameters.ParamByName('codder').Value := DmOra.ConsSql.FieldByName('USU_CODDER').Value;
                   DmOra.CadUsu_TDerCor.Parameters.ParamByName('codtec').Value := DmOra.ConsSql.FieldByName('USU_CODTEC').Value;
                   DmOra.CadUsu_TDerCor.Open;
                   if NOT DmOra.CadUsu_TDerCor.IsEmpty then
                      begin
                         DmOra.CadUsu_TDerCor.Delete;

                         //grava o log do movimento
                         DmFire.CadE075LLDC.Open;
                         DmFire.CadE075LLDC.Insert;
                         DmFire.CadE075LLDCCODEMP.Value := DmOra.ConsSql.FieldByName('USU_CODEMP').Value;
                         DmFire.CadE075LLDCCODPRO.Value := DmOra.ConsSql.FieldByName('USU_CODPRO').Value;
                         DmFire.CadE075LLDCCODDER.Value := DmOra.ConsSql.FieldByName('USU_CODDER').Value;
                         DmFire.CadE075LLDCCODTEC.Value := DmOra.ConsSql.FieldByName('USU_CODTEC').Value;
                         DmFire.CadE075LLDCDATMOV.Value := date;
                         DmFire.CadE075LLDCTIPMOV.Value := 'D';
                         DmFire.ConsSql.Close;
                         DmFire.ConsSql.SQL.Clear;
                         DmFire.ConsSql.SQL.Add('select nummov from e075lldc where datmov = :datmov order by nummov desc');
                         DmFire.ConsSql.ParamByName('datmov').Value := date;
                         DmFire.ConsSql.Open;
                         if DmFire.ConsSql.IsEmpty then
                            DmFire.CadE075LLDCNUMMOV.Value := 1
                         else
                            DmFire.CadE075LLDCNUMMOV.Value := DmFire.ConsSql.FieldByName('nummov').AsInteger + 1;

                         DmFire.CadE075LLDC.Post;
                         DmFire.IBTransacao.CommitRetaining;

                      end;
                   DmOra.ConsSql.Next;
                 end;//4
                MessageDlg('Ok Processado!',mtInformation,[mbOK],0);
           end;//3
     end;//1
end;

procedure TFLigProdutos_Cores.btnAddClientProdutoClick(Sender: TObject);
begin
  if (Trim(edtCodPro.Text) <> '') then
     begin
       ClientDerivacoes.First;
       while not ClientDerivacoes.Eof do
          begin
              if ClientDerivacoesinChek.AsString = 'S' then
                 begin
                    DmOra.ClientProdutos.Open;
                    DmOra.ClientProdutos.Insert;
                    DmOra.ClientProdutosCodPro.AsString := edtCodPro.Text;
                    DmOra.ClientProdutosCodDer.AsString := ClientDerivacoesCodDer.AsString;
                    DmOra.ClientProdutosDesPro.AsString := edtDesPro.Text;
                    DmOra.ClientProdutos.Post;
                 end;
             ClientDerivacoes.Next;
          end;


           edtCodPro.Clear;
           edtDesPro.Clear;
           ClientDerivacoes.EmptyDataSet;
           ActiveControl := edtCodPro;
     end;

end;

procedure TFLigProdutos_Cores.btnConsProClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FLigProdutos_Cores';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := edtCodPro;
end;

procedure TFLigProdutos_Cores.ConsDerAfterScroll(DataSet: TDataSet);
begin
 BMostrar.Click;
end;

procedure TFLigProdutos_Cores.dbgDerivacoesCellClick(Column: TColumn);
begin
if (Column.FieldName = 'vaImg') and (not ClientDerivacoes.IsEmpty) then
     begin
        ClientDerivacoes.Edit;
        if ClientDerivacoesinChek.AsString = 'S' then
           ClientDerivacoesinChek.AsString := 'N'
        else
           ClientDerivacoesinChek.AsString := 'S';
        ClientDerivacoes.Post;
     end;
end;

procedure TFLigProdutos_Cores.dbgDerivacoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);    var
  Check: Integer;
  R: TRect;
begin
//DESENHA O CHECK NA GRID
  if (Column.FieldName = 'vaImg') and (not ClientDerivacoes.IsEmpty) then
     begin
       dbgDerivacoes.Canvas.FillRect(Rect);
       Check := 0;

       if ClientDerivacoesinChek.AsString = 'S' then
          Check := DFCS_CHECKED
       else Check := 0;
          R:=Rect;
          InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
          DrawFrameControl(dbgDerivacoes.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end;


end;

procedure TFLigProdutos_Cores.EdCodCor1Exit(Sender: TObject);
begin
if trim(EdCodCor1.Text) <> '' then
  begin
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('select codpro,despro from e075pro where codpro = :codpro');
    DmOra.ConsSql.Parameters.ParamByName('codpro').Value := trim(EdCodCor1.Text);
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
         MessageDlg('Cor não encontrada!',mtWarning,[mbOK],0);
         ActiveControl := EdCodCor1;
       end;

  end;
end;

procedure TFLigProdutos_Cores.EdCodProExit(Sender: TObject);
begin
if  trim(EdCodPro.Text) <> '' then
  begin
    DmOra.ConsSql.Close;
    DmOra.ConsSql.SQL.Clear;
    DmOra.ConsSql.SQL.Add('select codpro,despro from e075pro where codpro = :codpro');
    DmOra.ConsSql.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
    DmOra.ConsSql.Open;
    if DmOra.ConsSql.IsEmpty then
       begin
         MessageDlg('Produto não encontrado!',mtWarning,[mbOK],0);
         LDsCodPro.Caption := '';
         ConsDer.Close;
         ActiveControl := EdCodPro;

       end
    else
       begin
           LDsCodPro.Caption := DmOra.ConsSql.FieldByName('DESPRO').Value;

           ConsDer.Close;
           ConsDer.Parameters.ParamByName('CODPRO').Value := DmOra.ConsSql.FieldByName('CODPRO').Value;
           ConsDer.Open;
       end;
  end
else
  begin
    LDsCodPro.Caption := '';
    ConsDer.Close;
  end;
end;

procedure TFLigProdutos_Cores.edtCodProExit(Sender: TObject);
begin
  if  trim(edtCodPro.Text) <> '' then
    begin
      DmOra.ConsSql.Close;
      DmOra.ConsSql.SQL.Clear;
      DmOra.ConsSql.SQL.Add('select codpro,despro from e075pro where codpro = :codpro');
      DmOra.ConsSql.Parameters.ParamByName('codpro').Value := trim(edtCodPro.Text);
      DmOra.ConsSql.Open;
      if DmOra.ConsSql.IsEmpty then
         begin
           MessageDlg('Produto não encontrado!',mtWarning,[mbOK],0);
           edtDesPro.Clear;
           ClientDerivacoes.EmptyDataSet;
           ActiveControl := edtCodPro;

         end
      else
         begin
           edtDesPro.Text := DmOra.ConsSql.FieldByName('DESPRO').AsString;
            ClientDerivacoes.EmptyDataSet;

            DmOra.ConsSql.Close;
            DmOra.ConsSql.SQL.Clear;
            DmOra.ConsSql.SQL.Add('SELECT CODDER');
            DmOra.ConsSql.SQL.Add('  FROM E075DER');
            DmOra.ConsSql.SQL.Add('  WHERE');
            DmOra.ConsSql.SQL.Add('    CODPRO = :CODPRO AND');
            DmOra.ConsSql.SQL.Add('    SITDER = ''A''');
            DmOra.ConsSql.SQL.Add('    ORDER BY CODDER');
            DmOra.ConsSql.Parameters.ParamByName('codpro').Value := trim(edtCodPro.Text);
            DmOra.ConsSql.Open;
            DmOra.ConsSql.First;
            ClientDerivacoes.Open;
            while not DmOra.ConsSql.Eof do
              begin
                ClientDerivacoes.Insert;
                ClientDerivacoesCodDer.AsString := DmOra.ConsSql.FieldByName('CODDER').AsString;
                ClientDerivacoesinChek.AsString := 'N';
                ClientDerivacoes.Post;

                DmOra.ConsSql.Next;
              end;
         end;
    end
  else
    begin
      edtDesPro.Clear;
      ClientDerivacoes.EmptyDataSet;

    end;
end;

procedure TFLigProdutos_Cores.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFLigProdutos_Cores.FormShow(Sender: TObject);
begin
  DmOra.ClientProdutos.EmptyDataSet;
  ClientDerivacoes.EmptyDataSet;
end;

procedure TFLigProdutos_Cores.SpeedButton1Click(Sender: TObject);
var vnPosLig,vnPosDes : integer;
begin
     if (trim(EdCodPro.Text) <> '') and (not ConsDer.IsEmpty) and (not ClientConsTecDes.IsEmpty) then
         begin//1

                DmOra.CadUsu_TDerCor.Close;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codemp').Value := 1;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codtec').Value := ClientConsTecDesCODPRO.Value;
                DmOra.CadUsu_TDerCor.Open;
                if DmOra.CadUsu_TDerCor.IsEmpty then
                   begin//4
                     DmOra.CadUsu_TDerCor.Insert;
                     DmOra.CadUsu_TDerCorUSU_CODEMP.Value := 1;
                     DmOra.CadUsu_TDerCorUSU_CODPRO.Value := trim(EdCodPro.Text);
                     DmOra.CadUsu_TDerCorUSU_CODDER.Value := ConsDerCODDER.AsString;
                     DmOra.CadUsu_TDerCorUSU_CODTEC.Value := ClientConsTecDesCODPRO.Value;
                     DmOra.CadUsu_TDerCorUSU_SITTEC.Value := 'A';
                     DmOra.CadUsu_TDerCorUSU_DESTEC.Value := '';
                     DmOra.CadUsu_TDerCor.Post;

                     //grava o log do movimento
                     DmFire.CadE075LLDC.Open;
                     DmFire.CadE075LLDC.Insert;
                     DmFire.CadE075LLDCCODEMP.Value := 1;
                     DmFire.CadE075LLDCCODPRO.Value := trim(EdCodPro.Text);
                     DmFire.CadE075LLDCCODDER.Value := ConsDerCODDER.AsString;
                     DmFire.CadE075LLDCCODTEC.Value := ClientConsTecDesCODPRO.Value;
                     DmFire.CadE075LLDCDATMOV.Value := date;
                     DmFire.CadE075LLDCTIPMOV.Value := 'L';
                     DmFire.ConsSql.Close;
                     DmFire.ConsSql.SQL.Clear;
                     DmFire.ConsSql.SQL.Add('select nummov from e075lldc where datmov = :datmov order by nummov desc');
                     DmFire.ConsSql.ParamByName('datmov').Value := date;
                     DmFire.ConsSql.Open;
                     if DmFire.ConsSql.IsEmpty then
                        DmFire.CadE075LLDCNUMMOV.Value := 1
                     else
                        DmFire.CadE075LLDCNUMMOV.Value := DmFire.ConsSql.FieldByName('nummov').AsInteger + 1;

                     DmFire.CadE075LLDC.Post;
                     DmFire.IBTransacao.CommitRetaining;



                     //atualiza as consultas
                     vnPosLig := ClientConsTecLig.RecNo;
                     if vnPosLig <= 0 then
                        vnPosLig := 1;
                     ClientConsTecLig.Close;
                     ConsTecLig.Close;
                     ConsTecLig.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
                     ConsTecLig.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
                     ConsTecLig.Open;
                     ClientConsTecLig.Open;
                     if ClientConsTecLig.RecNo > 0 then
                     ClientConsTecLig.RecNo := vnPosLig ;

                     //ClientConsTecDes.RefreshRecord;
                     vnPosDes := ClientConsTecDes.RecNo;
                     if vnPosDes <= 0 then
                        vnPosDes := 1;
                     ClientConsTecDes.Close;
                     ConsTecDes.Close;
                     ConsTecDes.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
                     ConsTecDes.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
                     ConsTecDes.Open;
                     ClientConsTecDes.Open;
                     if ClientConsTecDes.RecNo > 0 then
                     ClientConsTecDes.RecNo := vnPosDes ; //posiciona a consulta no mesmo lugar que estava


                   end;//4

         end;//1



end;

procedure TFLigProdutos_Cores.SpeedButton2Click(Sender: TObject);
var vnPosLig,vnPosDes : integer;
begin
     if (trim(EdCodPro.Text) <> '') and (not ConsDer.IsEmpty) and (not ClientConsTecLig.IsEmpty) then
         begin//1

                DmOra.CadUsu_TDerCor.Close;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codemp').Value := 1;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codpro').Value := trim(EdCodPro.Text);
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
                DmOra.CadUsu_TDerCor.Parameters.ParamByName('codtec').Value := ClientConsTecLigUSU_CODTEC.Value;
                DmOra.CadUsu_TDerCor.Open;
                if not DmOra.CadUsu_TDerCor.IsEmpty then
                   begin//4
                     DmOra.CadUsu_TDerCor.Delete;

                     //grava o log do movimento
                     DmFire.CadE075LLDC.Open;
                     DmFire.CadE075LLDC.Insert;
                     DmFire.CadE075LLDCCODEMP.Value := 1;
                     DmFire.CadE075LLDCCODPRO.Value := trim(EdCodPro.Text);
                     DmFire.CadE075LLDCCODDER.Value := ConsDerCODDER.AsString;
                     DmFire.CadE075LLDCCODTEC.Value := ClientConsTecLigUSU_CODTEC.Value;
                     DmFire.CadE075LLDCDATMOV.Value := date;
                     DmFire.CadE075LLDCTIPMOV.Value := 'D';
                     DmFire.ConsSql.Close;
                     DmFire.ConsSql.SQL.Clear;
                     DmFire.ConsSql.SQL.Add('select nummov from e075lldc where datmov = :datmov order by nummov desc');
                     DmFire.ConsSql.ParamByName('datmov').Value := date;
                     DmFire.ConsSql.Open;
                     if DmFire.ConsSql.IsEmpty then
                        DmFire.CadE075LLDCNUMMOV.Value := 1
                     else
                        DmFire.CadE075LLDCNUMMOV.Value := DmFire.ConsSql.FieldByName('nummov').AsInteger + 1;

                     DmFire.CadE075LLDC.Post;
                     DmFire.IBTransacao.CommitRetaining;

                     //atualiza as consultas

                     vnPosLig := ClientConsTecLig.RecNo;
                     if vnPosLig <= 0 then
                        vnPosLig := 1;
                     ClientConsTecLig.Close;
                     ConsTecLig.Close;
                     ConsTecLig.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
                     ConsTecLig.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
                     ConsTecLig.Open;
                     ClientConsTecLig.Open;
                     if ClientConsTecLig.RecNo > 0 then
                     ClientConsTecLig.RecNo := vnPosLig ;

                     //ClientConsTecDes.Refresh;
                     vnPosDes := ClientConsTecDes.RecNo;
                     if vnPosDes <= 0 then
                        vnPosDes := 1;
                     ClientConsTecDes.Close;
                     ConsTecDes.Close;
                     ConsTecDes.Parameters.ParamByName('codpro').Value := Trim(EdCodPro.Text);
                     ConsTecDes.Parameters.ParamByName('codder').Value := ConsDerCODDER.AsString;
                     ConsTecDes.Open;
                     ClientConsTecDes.Open;
                     if ClientConsTecDes.RecNo > 0 then
                     ClientConsTecDes.RecNo := vnPosDes ; //posiciona a consulta no mesmo lugar que estava


                   end;//4

         end;//1
end;

end.
