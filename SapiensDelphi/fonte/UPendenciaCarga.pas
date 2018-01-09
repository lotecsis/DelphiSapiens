unit UPendenciaCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, Mask, DBCtrls, Buttons, Grids, DBGrids, ADODB;

type
  TFPendenciaCarga = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    EdNumPen: TEdit;
    Label1: TLabel;
    DBUSU_CODCLI: TDBEdit;
    DsCadUsu_T097Pen: TDataSource;
    CbTipPen: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    CbSitPen: TComboBox;
    Label5: TLabel;
    DBUSU_PRECAR: TDBEdit;
    DBUSU_OBSPEN: TDBMemo;
    Panel5: TPanel;
    BConfirma: TBitBtn;
    DBUSU_DATGER: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBUSU_USUGER: TDBEdit;
    BConsCliente: TBitBtn;
    LDsCodCli: TLabel;
    LEndCli: TLabel;
    DBGrid1: TDBGrid;
    DsCadUsu_T097Ppen: TDataSource;
    BSair: TBitBtn;
    BConsPendencia: TBitBtn;
    DsConsDesPro: TDataSource;
    DBT_DESPRO: TDBText;
    Label8: TLabel;
    procedure EdNumPenExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DsCadUsu_T097PenStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNumPenKeyPress(Sender: TObject; var Key: Char);
    procedure BConfirmaClick(Sender: TObject);
    procedure CbSitPenChange(Sender: TObject);
    procedure CbTipPenChange(Sender: TObject);
    procedure BConsClienteClick(Sender: TObject);
    procedure DBUSU_CODCLIExit(Sender: TObject);
    procedure BConsProdutoClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DsCadUsu_T097PpenStateChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BSairClick(Sender: TObject);
    procedure BConsPendenciaClick(Sender: TObject);
  private
    { Private declarations }
    vaStatusUsu_T097Pen : TDataSetState;
    vaStatusUsu_T097Ppen : TDataSetState;
  public
    { Public declarations }
  end;

var
  FPendenciaCarga: TFPendenciaCarga;

implementation

uses UDmOra, UConsGeralNfEnt, UDm2, UConsDerivacoes;

{$R *.dfm}

procedure TFPendenciaCarga.BConfirmaClick(Sender: TObject);
begin
    if trim(DBUSU_CODCLI.Text) = '' then
       begin
         MessageDlg('Informe o Cliente!',mtWarning,[mbok],0);
         ActiveControl := DBUSU_CODCLI;
       end
    else
       if CbTipPen.ItemIndex <= 0 then
          begin
            MessageDlg('Informe o Tipo da Pendência!',mtWarning,[mbok],0);
            ActiveControl := CbTipPen;
          end
       else
          begin//1

             DmOra.CadUsu_T097PenUSU_TIPPEN.Value := trim(CbTipPen.Text);

             if CbSitPen.ItemIndex = 0 then
                DmOra.CadUsu_T097PenUSU_SITPEN.Value := 'A'
             else
               if CbSitPen.ItemIndex = 1 then
                DmOra.CadUsu_T097PenUSU_SITPEN.Value := 'F';

             DmOra.CadUsu_T097Pen.Post;

             EdNumPen.Text := IntToStr(DmOra.CadUsu_T097PenUSU_NUMPEN.AsInteger);
             EdNumPenExit(Sender);

          end;//1
end;

procedure TFPendenciaCarga.BConsClienteClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cgccpf,e085cli.insest,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085cli.cidcli,e085cli.sigufs,e085cli.endcli,e085cli.baicli,e085cli.sitcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e085hcl.codrep,e090rep.nomrep,e090rep.aperep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e085cli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085hcl on e085hcl.codcli = e085cli.codcli';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e090rep on e090rep.codrep = e085hcl.codrep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085hcl.codfil = 1';

    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FPendenciaCarga';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := DBUSU_CODCLI;
end;

procedure TFPendenciaCarga.BConsPendenciaClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select usu_t097pen.usu_tippen,usu_t097pen.usu_sitpen, usu_t097pen.usu_numpen,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' usu_t097pen.usu_codcli,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' usu_t097pen.usu_precar,usu_t097pen.usu_datger,usu_t097pen.usu_usuger';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from usu_t097pen';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e085cli on e085cli.codcli = usu_t097pen.usu_codcli';


    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'NumPen';
    FConsGeralNfEnt.vnColuna := 4;
    FConsGeralNfEnt.vaTela := 'FPendenciaCarga';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdNumPen;
end;

procedure TFPendenciaCarga.BConsProdutoClick(Sender: TObject);
begin
ShowMessage('lala');
end;

procedure TFPendenciaCarga.BSairClick(Sender: TObject);
begin
close;
end;

procedure TFPendenciaCarga.CbSitPenChange(Sender: TObject);
begin
  if not (vaStatusUsu_T097Pen  in [dsinsert,dsEdit]) then
      begin
        if not (vaStatusUsu_T097Pen in [dsInsert]) then
           begin
             if not DmOra.CadUsu_T097Pen.IsEmpty then
                begin
                  DmOra.CadUsu_T097Pen.Edit;
                end;
           end;
      end;
end;

procedure TFPendenciaCarga.CbTipPenChange(Sender: TObject);
begin
if not (vaStatusUsu_T097Pen  in [dsinsert,dsEdit]) then
      begin
        if not (vaStatusUsu_T097Pen in [dsInsert]) then
           begin
             if not DmOra.CadUsu_T097Pen.IsEmpty then
                begin
                  DmOra.CadUsu_T097Pen.Edit;
                end;
           end;
      end;
end;

procedure TFPendenciaCarga.DBGrid1ColExit(Sender: TObject);
var vaValor : string;
begin
if vaStatusUsu_T097Ppen in [dsInsert,dsEdit] then
   begin//
      if DBGrid1.SelectedField.FieldName = 'USU_CODPRO' then
         begin//1
            vaValor := DBGrid1.SelectedField.AsString;
            if trim(vaValor) <> '' then
               begin//2
                  DmOra.ConsSql.Close;
                  DmOra.ConsSql.SQL.Clear;
                  DmOra.ConsSql.SQL.Add('select e075pro.codpro,e075pro.despro from e075pro where e075pro.codpro = :codpro');
                  DmOra.ConsSql.Parameters.ParamByName('codpro').Value := DBGrid1.SelectedField.Value;
                  DmOra.ConsSql.Open;
                 if DmOra.ConsSql.IsEmpty then
                    begin//3
                       Application.MessageBox('Produto não encontrado','Aviso', MB_ICONWARNING+MB_OK);
                       DBGrid1.SelectedIndex := 1;
                       Abort;
                    end;//3
              end//2
            else
              begin//4
                Application.MessageBox('Informe o Produto','Aviso', MB_ICONWARNING+MB_OK);
                DBGrid1.SelectedIndex := 1;
                Abort;
              end;//4
         end;//1

      if DBGrid1.SelectedField.FieldName = 'USU_CODDER'  then
         begin//5
            vaValor := DBGrid1.SelectedField.AsString;
            if trim(vaValor) <> '' then
               begin//6
                  DmOra.ConsSql.Close;
                  DmOra.ConsSql.SQL.Clear;
                  DmOra.ConsSql.SQL.Add('select e075der.codpro,e075der.codder from e075der where e075der.codpro = :codpro and e075der.codder = :codder');
                  DmOra.ConsSql.Parameters.ParamByName('codpro').Value := DmOra.CadUsu_T097PpenUSU_CODPRO.Value;
                  DmOra.ConsSql.Parameters.ParamByName('codder').Value := DBGrid1.SelectedField.Value;
                  DmOra.ConsSql.Open;
                 if DmOra.ConsSql.IsEmpty then
                    begin//7
                       Application.MessageBox('Derivação não encontrada para este produto!','Aviso', MB_ICONWARNING+MB_OK);
                       DBGrid1.SelectedIndex := 2;
                       Abort;
                    end;//7
              end//6
            else
              begin//8
                Application.MessageBox('Informe a Derivação!','Aviso', MB_ICONWARNING+MB_OK);
                DBGrid1.SelectedIndex := 2;
                Abort;
              end;//8
         end;//5

   end;//
end;

procedure TFPendenciaCarga.DBGrid1EditButtonClick(Sender: TObject);
begin
if vaStatusUsu_T097Ppen in [dsInsert,dsEdit] then
   begin//1
    if DBGrid1.SelectedField.FieldName = 'USU_CODPRO' then
       begin//2
          FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
          FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori = 01';
          FConsGeralNfEnt.vbWhere := true;
          FConsGeralNfEnt.vaCampo := 'CodPro';
          FConsGeralNfEnt.vnColuna := 1;
          FConsGeralNfEnt.vaTela := 'FPendenciaCarga';
          FConsGeralNfEnt.ShowModal;
          FreeAndNil(FConsGeralNfEnt);
       end;//2

    if DBGrid1.SelectedField.FieldName = 'USU_CODDER' then
       begin//3
           FConsDerivacoes := TFConsDerivacoes.Create(Self);
           FConsDerivacoes.vaCodPro := DmOra.CadUsu_T097PpenUSU_CODPRO.Value;

          if FConsDerivacoes.ShowModal = mrOk then
             begin
                DBGrid1.SelectedField.Value := FConsDerivacoes.ConsDerivacoesCODDER.Value;

             end;
           FreeAndNil(FConsDerivacoes);
       end;//3

    if (DBGrid1.SelectedField.FieldName = 'USU_VLRPRO') and
       (trim(DmOra.CadUsu_T097PpenUSU_CODPRO.Value) <> '') and
       (trim(DmOra.CadUsu_T097PpenUSU_CODDER.Value) <> '')  then
       begin//4
          FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
          FConsGeralNfEnt.vaSql := 'select e081itp.codtpr,e081tab.destpr,';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e081itp.codpro,e081itp.codder,e081itp.prebas';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e081itp';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e081tab on e081tab.codemp = e081itp.codemp and';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e081tab.codtpr = e081itp.codtpr';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where e081itp.codpro = '+DmOra.CadUsu_T097PpenUSU_CODPRO.AsString + '  and';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e081itp.codder = '+ DmOra.CadUsu_T097PpenUSU_CODDER.AsString + ' and';
          FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e081itp.codtpr in (0001,0002,0004)';
          FConsGeralNfEnt.vbWhere := true;
          FConsGeralNfEnt.vaCampo := 'VlrPro';
          FConsGeralNfEnt.vnColuna := 1;
          FConsGeralNfEnt.vaTela := 'FPendenciaCarga';
          FConsGeralNfEnt.ShowModal;
          FreeAndNil(FConsGeralNfEnt);

       end;//4

   end;//1

end;

procedure TFPendenciaCarga.DBGrid1Enter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFPendenciaCarga.DBGrid1Exit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFPendenciaCarga.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if KEY = vk_Return Then
    DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
end;

procedure TFPendenciaCarga.DBUSU_CODCLIExit(Sender: TObject);
var vaEndCli : string;
begin
   if trim(DBUSU_CODCLI.Text) <> '' then
      begin
         Dm2.ConsE085Cli.Close;
         Dm2.ConsE085Cli.Parameters.ParamByName('codfil').Value := 1;
         Dm2.ConsE085Cli.Parameters.ParamByName('codcli').Value := StrToInt(trim(DBUSU_CODCLI.Text));
         Dm2.ConsE085Cli.Open;
         if Dm2.ConsE085Cli.IsEmpty then
            begin
               Application.MessageBox('Cliente não encontrado','ERRO', MB_ICONERROR+MB_OK);
               DBUSU_CODCLI.Clear;
               LDsCodCli.Caption := '';
               LEndCli.Caption := '';
               ActiveControl := DBUSU_CODCLI;
            end
         else
            begin
              LDsCodCli.Caption := Dm2.ConsE085CliNOMCLI.Value;
              vaEndCli := Dm2.ConsE085CliAPECLI.Value +'  -  '+
              Dm2.ConsE085CliENDCLI.Value+'  -  '+
              Dm2.ConsE085CliNENCLI.Value+'  -  '+
              Dm2.ConsE085CliBAICLI.Value+'  -  '+
              Dm2.ConsE085CliCIDCLI.Value+'  -  '+
              Dm2.ConsE085CliSIGUFS.Value+'  -  '+
              Dm2.ConsE085CliFONCLI.Value;
              LEndCli.Caption := vaEndCli;

            end;
      end
   else
      begin
         LDsCodCli.Caption := '';
         LEndCli.Caption := '';
      end;
end;

procedure TFPendenciaCarga.DsCadUsu_T097PenStateChange(Sender: TObject);
begin
    if DmOra.CadUsu_T097Pen.State in [dsinsert,dsedit] then
       begin
          BConfirma.Enabled := true;
          BConsCliente.Enabled := true;

       end
    else
       begin
         BConfirma.Enabled := false;
         BConsCliente.Enabled := false;
       end;

       vaStatusUsu_T097Pen := DmOra.CadUsu_T097Pen.State;
end;

procedure TFPendenciaCarga.DsCadUsu_T097PpenStateChange(Sender: TObject);
begin
  vaStatusUsu_T097Ppen := DmOra.CadUsu_T097Ppen.State;
end;

procedure TFPendenciaCarga.EdNumPenExit(Sender: TObject);
begin
   if trim(EdNumPen.Text) <> '' then
      begin//1
         if trim(EdNumPen.Text) = '0' then
            begin//3
              DmOra.CadUsu_T097Pen.Open;
              DmOra.CadUsu_T097Pen.Insert;

              DBUSU_CODCLI.Clear;
              DBUSU_CODCLIExit(Sender);

            end//3
         else
            begin//4
              DmOra.CadUsu_T097Pen.Close;
              DmOra.CadUsu_T097Pen.Parameters.ParamByName('codemp').Value := 1;
              DmOra.CadUsu_T097Pen.Parameters.ParamByName('numpen').Value := StrToInt(trim(EdNumPen.Text));
              DmOra.CadUsu_T097Pen.Open;
              if DmOra.CadUsu_T097Pen.IsEmpty then
                 begin//5
                   MessageDlg('Pendência não encontrada!',mtWarning,[mbok],0);
                   CbTipPen.ItemIndex := 0;

                   DBUSU_CODCLIExit(Sender);

                   DmOra.CadUsu_T097Ppen.Active := false;

                   ActiveControl := EdNumPen;
                 end//5
              else
                 begin//6
                 
                    if DmOra.CadUsu_T097PenUSU_SITPEN.Value = 'A' then
                       begin
                         CbSitPen.ItemIndex := 0
                       end
                    else
                      if DmOra.CadUsu_T097PenUSU_SITPEN.Value = 'F' then
                         begin
                           CbSitPen.ItemIndex := 1; 
                         end;

                    if DmOra.CadUsu_T097PenUSU_TIPPEN.Value = 'RETIRA PARA CONSERTO' then
                       begin
                          CbTipPen.ItemIndex := 1
                       end
                    else
                        if DmOra.CadUsu_T097PenUSU_TIPPEN.Value = 'RETIRA DE TROCA' then
                           begin
                             CbTipPen.ItemIndex := 2;
                           end;

                     DBUSU_CODCLIExit(Sender);

                     DmOra.CadUsu_T097Ppen.Close;
                     DmOra.CadUsu_T097Ppen.Parameters.ParamByName('codemp').Value := 1;
                     DmOra.CadUsu_T097Ppen.Parameters.ParamByName('numpen').Value := StrToInt(trim(EdNumPen.Text));
                     DmOra.CadUsu_T097Ppen.Open;

                 end;//6

            end;//4
      end//1
   else
      begin//2

        DmOra.CadUsu_T097Pen.Active := false;
        DmOra.CadUsu_T097Ppen.Active := false;
        LDsCodCli.Caption := '';
        LEndCli.Caption := '';
        CbTipPen.ItemIndex := 0;
      end;//2

 end;

procedure TFPendenciaCarga.EdNumPenKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TFPendenciaCarga.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if vaStatusUsu_T097Pen in [dsinsert,dsedit] then
  begin
   MessageDlg('Confirme as alterações antes de fechar!',mtWarning,[mbok],0);

  end
 else
  if vaStatusUsu_T097Ppen in [dsinsert,dsedit] then
     begin
       MessageDlg('Confirme as alterações no item que esta em edição antes de fechar!',mtWarning,[mbok],0);
     end
 else
   canclose := true;

end;

procedure TFPendenciaCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFPendenciaCarga.FormShow(Sender: TObject);
begin
    DmOra.CadUsu_T097Pen.Active := true;
    DmOra.CadUsu_T097Pen.Close;

    DmOra.CadUsu_T097Ppen.Active := false;
    DmOra.CadUsu_T097Pen.Close;
end;

end.
