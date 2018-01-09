unit UCadUsuSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons, IBCustomDataSet,
  IBQuery, ExtCtrls, Grids, DBGrids, DBCGrids, Provider, DBClient, rxCurrEdit,
  rxToolEdit, RXDBCtrl, ActnList, Menus, PlatformDefaultStyleActnCtrls,
  ActnPopup;

type
  TFCadUsuSysRep = class(TForm)
    PaginaControle: TPageControl;
    TbCadastro: TTabSheet;
    TbConsulta: TTabSheet;
    Label1: TLabel;
    DBECodUsu: TDBEdit;
    Label2: TLabel;
    DBELogUsu: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBENomUsu: TDBEdit;
    Label8: TLabel;
    DBECodRep: TDBEdit;
    DBENomRep: TDBEdit;
    Label11: TLabel;
    EdSenUsu: TEdit;
    EdChave: TEdit;
    EdAtuUsu: TComboBox;
    EdSitUsu: TComboBox;
    EdDatCad: TEdit;
    DsCadE100Usu: TDataSource;
    ValidaE100Usu: TIBQuery;
    ValidaE100UsuCODUSU: TIntegerField;
    ValidaE100UsuLOGUSU: TIBStringField;
    ValidaE100UsuSENUSU: TIBStringField;
    ValidaE100UsuDATCAD: TDateField;
    ValidaE100UsuSITUSU: TIBStringField;
    ValidaE100UsuCHAVE: TIBStringField;
    ValidaE100UsuNOMUSU: TIBStringField;
    ValidaE100UsuCODREP: TIntegerField;
    ValidaE100UsuNOMREP: TIBStringField;
    ValidaE100UsuUSUADM: TIBStringField;
    ValidaE100UsuATUUSU: TIBStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    EdPesquisa: TEdit;
    ConsE100Usu: TIBQuery;
    ConsE100UsuCODUSU: TIntegerField;
    ConsE100UsuLOGUSU: TIBStringField;
    ConsE100UsuSENUSU: TIBStringField;
    ConsE100UsuDATCAD: TDateField;
    ConsE100UsuSITUSU: TIBStringField;
    ConsE100UsuCHAVE: TIBStringField;
    ConsE100UsuNOMUSU: TIBStringField;
    ConsE100UsuCODREP: TIntegerField;
    ConsE100UsuNOMREP: TIBStringField;
    ConsE100UsuUSUADM: TIBStringField;
    ConsE100UsuATUUSU: TIBStringField;
    DsConsE100Usu: TDataSource;
    BGeraCodigo: TBitBtn;
    Panel3: TPanel;
    BNovo: TBitBtn;
    BAltera: TBitBtn;
    BCancelar: TBitBtn;
    BConfirmar: TBitBtn;
    PaginaControle2: TPageControl;
    TbCondPgto: TTabSheet;
    DsConsE028Cpg: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCODCPG: TDBText;
    DBDESCPG: TDBText;
    CadE028Cpg: TIBDataSet;
    CadE028CpgCODEMP: TIntegerField;
    CadE028CpgCODCPG: TIBStringField;
    CadE028CpgCODUSU: TIntegerField;
    CadE028CpgDESCPG: TIBStringField;
    CadE028CpgABRCPG: TIBStringField;
    CadE028CpgPRZMED: TIntegerField;
    CadE028CpgQTDPAR: TIntegerField;
    CadE028CpgSITCPG: TIBStringField;
    CadE028CpgCPGLIB: TIBStringField;
    DBCPGLIB: TDBEdit;
    ConsE028Cpg: TIBQuery;
    ConsE028CpgCODEMP: TIntegerField;
    ConsE028CpgCODCPG: TIBStringField;
    ConsE028CpgCODUSU: TIntegerField;
    ConsE028CpgDESCPG: TIBStringField;
    ConsE028CpgABRCPG: TIBStringField;
    ConsE028CpgPRZMED: TIntegerField;
    ConsE028CpgQTDPAR: TIntegerField;
    ConsE028CpgSITCPG: TIBStringField;
    ConsE028CpgCPGLIB: TIBStringField;
    TbTabPreco: TTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    EdCodTpr: TEdit;
    Panel5: TPanel;
    EdDatFim: TDateEdit;
    EdDatIni: TDateEdit;
    BitBtn1: TBitBtn;
    EdTolDesc: TCurrencyEdit;
    Label12: TLabel;
    Label13: TLabel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    EdCodProPesq: TEdit;
    EdCodDerPesq: TEdit;
    EdDesProPesq: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ChTolDesc: TCheckBox;
    DsConsE081Itp: TDataSource;
    CadE028CpgPERCOM: TFloatField;
    ConsE028CpgPERCOM: TFloatField;
    DBEQTDDIA: TDBEdit;
    Label14: TLabel;
    DBDatAtu: TDBDateEdit;
    DBEHorAtu: TDBEdit;
    Label18: TLabel;
    TbComandosSql: TTabSheet;
    DBGrid3: TDBGrid;
    DBMComSql: TDBMemo;
    DsCadE100Sql: TDataSource;
    DsConsE100Sql: TDataSource;
    BInserirSql: TBitBtn;
    BAlterarSql: TBitBtn;
    BCancelarSql: TBitBtn;
    BExcluirSql: TBitBtn;
    BConfirmarSql: TBitBtn;
    ConsE100UsuQTDDIA: TIntegerField;
    ConsE100UsuDATATU: TDateField;
    ConsE100UsuHORATU: TIBStringField;
    BLimpaBancoSysRep: TBitBtn;
    BZerarNControle: TBitBtn;
    BApagaPedRecebidos: TBitBtn;
    Label19: TLabel;
    DBEVerExe: TDBEdit;
    ConsE100UsuVEREXE: TIBStringField;
    BGeraSqlDelete: TBitBtn;
    procedure BNovoClick(Sender: TObject);
    procedure BAlteraClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadE100UsuStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGeraCodigoClick(Sender: TObject);
    procedure DBECPGLIBKeyPress(Sender: TObject; var Key: Char);
    procedure DBCPGLIBKeyPress(Sender: TObject; var Key: Char);
    procedure DBCPGLIBExit(Sender: TObject);
    procedure CadE028CpgBeforePost(DataSet: TDataSet);
    procedure DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EdCodTprExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdCodProPesqChange(Sender: TObject);
    procedure EdDesProPesqChange(Sender: TObject);
    procedure EdCodDerPesqChange(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure TbComandosSqlShow(Sender: TObject);
    procedure BInserirSqlClick(Sender: TObject);
    procedure BAlterarSqlClick(Sender: TObject);
    procedure BExcluirSqlClick(Sender: TObject);
    procedure BCancelarSqlClick(Sender: TObject);
    procedure BConfirmarSqlClick(Sender: TObject);
    procedure DsCadE100SqlStateChange(Sender: TObject);
    procedure BLimpaBancoSysRepClick(Sender: TObject);
    procedure BZerarNControleClick(Sender: TObject);
    procedure BApagaPedRecebidosClick(Sender: TObject);
    procedure BGeraSqlDeleteClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vnCodUsu,vnCodRep : integer;
  end;

var
  FCadUsuSysRep: TFCadUsuSysRep;

implementation

uses UDmFire, UDmOra, UPrincipal, UAlteraPerTolTabPreco;

{$R *.dfm}

procedure TFCadUsuSysRep.BAlteraClick(Sender: TObject);
begin
    if DmFire.CadE100Usu.IsEmpty then
       begin
         MessageDlg('Não existe dados para alterar',mtWarning,[mbok],0);
       end
    else
       begin
         DmFire.CadE100Usu.Edit;
       end;
end;

procedure TFCadUsuSysRep.BAlterarSqlClick(Sender: TObject);
begin
    if not DmFire.CadE100Sql.IsEmpty then
       begin
         DmFire.CadE100Sql.Edit;
       end;
end;

procedure TFCadUsuSysRep.BApagaPedRecebidosClick(Sender: TObject);
begin
if not DmFire.CadE100Usu.IsEmpty then
   begin//1
     if Application.MessageBox('Deseja realmente continuar?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
         begin//2
    DmFire.ConsSql.Close;
    DmFire.ConsSql.SQL.Clear;
    DmFire.ConsSql.SQL.Add('select e120ped.*  from e120ped where');
    DmFire.ConsSql.SQL.Add('e120ped.codrep = :codrep and');
    DmFire.ConsSql.SQL.Add('e120ped.sitped <> 0');
    DmFire.ConsSql.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
    DmFire.ConsSql.Open;
    if not DmFire.ConsSql.IsEmpty then
       begin
          MessageDlg('Existe pedidos aguardado aprovação ou impressão',mtWarning,[mbok],0);
       end
    else
       begin
         DmFire.ConsSql.Close;
         DmFire.ConsSql.SQL.Clear;
         DmFire.ConsSql.SQL.Add('delete from e120obs where codrep = :codrep');
         DmFire.ConsSql.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
         DmFire.ConsSql.Open;

         DmFire.ConsSql.Close;
         DmFire.ConsSql.SQL.Clear;
         DmFire.ConsSql.SQL.Add('delete from usu120ipd where codrep = :codrep');
         DmFire.ConsSql.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
         DmFire.ConsSql.Open;

         DmFire.ConsSql.Close;
         DmFire.ConsSql.SQL.Clear;
         DmFire.ConsSql.SQL.Add('delete from e120ipd where codrep = :codrep');
         DmFire.ConsSql.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
         DmFire.ConsSql.Open;

         DmFire.ConsSql.Close;
         DmFire.ConsSql.SQL.Clear;
         DmFire.ConsSql.SQL.Add('delete from e120ped where codrep = :codrep');
         DmFire.ConsSql.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
         DmFire.ConsSql.Open;

         DmFire.IBTransacao.CommitRetaining;
       end;

         end;//2
   end;//1

end;

procedure TFCadUsuSysRep.BCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DmFire.CadE100Usu.Cancel;

     EdSenUsu.Clear;
     EdChave.Clear;
     EdDatCad.Clear;
    end;
end;

procedure TFCadUsuSysRep.BCancelarSqlClick(Sender: TObject);
begin
    DmFire.CadE100Sql.Cancel;
end;

procedure TFCadUsuSysRep.BConfirmarClick(Sender: TObject);
var arq : TextFile;
begin
    if trim(DBECodUsu.Text) = '' then
       begin
         MessageDlg('Informe o codigo!',mtWarning,[mbok],0);
         ActiveControl := DBECodUsu;
       end
    else if trim(DBENomUsu.Text) = '' then
            begin
              MessageDlg('Informe o nome!',mtWarning,[mbok],0);
              ActiveControl := DBENomUsu;
            end
         else if trim(DBELogUsu.Text) = '' then
                begin
                  MessageDlg('Informe o login!',mtWarning,[mbok],0);
                  ActiveControl := DBELogUsu;
                end
             else if trim(EdSenUsu.Text) = '' then
                     begin
                       MessageDlg('Informe a senha!',mtWarning,[mbok],0);
                       ActiveControl := EdSitUsu;
                     end
                  else if trim(EdChave.Text) = '' then
                          begin
                            MessageDlg('Gere a chave de controle',mtWarning,[mbok],0);
                            ActiveControl := EdChave;
                          end
                  else if trim(DBEQTDDIA.Text) = '' then
                          begin
                            MessageDlg('Informe a quantidade de dias para atualização!',mtWarning,[mbok],0);
                            ActiveControl := DBEQTDDIA;
                          end
                       else
                         begin//1
                         ValidaE100Usu.Close;
                         ValidaE100Usu.ParamByName('codusu').Value := DmFire.CadE100UsuCODUSU.Value;
                         ValidaE100Usu.Open;
                         if (not ValidaE100Usu.IsEmpty) and (DmFire.CadE100Usu.State in [dsinsert]) then
                            begin
                              MessageDlg('Código já existente!',mtWarning,[mbok],0);
                              ActiveControl := DBECodUsu;
                            end
                         else
                            begin//2

                                if EdAtuUsu.ItemIndex = 0 then
                                   DmFire.CadE100UsuATUUSU.Value := 'S'
                                else
                                   DmFire.CadE100UsuATUUSU.Value := 'N';

                                if EdSitUsu.ItemIndex = 0 then
                                     DmFire.CadE100UsuSITUSU.Value := 'A'
                                else
                                     DmFire.CadE100UsuSITUSU.Value := 'I';

                                if trim(DBECodRep.Text) = '' then
                                   DmFire.CadE100UsuCODREP.Value := 0;

                               DmFire.CadE100UsuSENUSU.Value := Trim(EdSenUsu.Text);

                               DmFire.CadE100UsuCHAVE.Value := trim(EdChave.Text);

                                DmFire.CadE100Usu.Post;
                                DmFire.IBTransacao.CommitRetaining;

                                //consulta se existe condiçoes de pagamento cadastrada
                                ConsE028Cpg.Close;
                                ConsE028Cpg.SQL.Clear;
                                ConsE028Cpg.SQL.Add('select * from e028cpg');
                                ConsE028Cpg.SQL.Add(' where codusu = :codusu');
                                ConsE028Cpg.ParamByName('codusu').Value := DmFire.CadE100UsuCODUSU.Value;
                                ConsE028Cpg.Open;
                                if ConsE028Cpg.IsEmpty then
                                   begin//3
                                     DmOra.ConsE028Cpg.Close;
                                     DmOra.ConsE028Cpg.SQL.Clear;
                                     DmOra.ConsE028Cpg.SQL.Add('select codemp,codcpg,descpg,abrcpg,przmed,qtdpar,percom from e028cpg order by codcpg');
                                     DmOra.ConsE028Cpg.Open;
                                     while not DmOra.ConsE028Cpg.Eof do
                                        begin//4
                                          DmFire.CadE028Cpg.Open;
                                          DmFire.CadE028Cpg.Insert;
                                          DmFire.CadE028CpgCODEMP.Value := DmOra.ConsE028CpgCODEMP.Value;
                                          DmFire.CadE028CpgCODCPG.Value := DmOra.ConsE028CpgCODCPG.Value;
                                          DmFire.CadE028CpgCODUSU.Value := DmFire.CadE100UsuCODUSU.Value;
                                          DmFire.CadE028CpgDESCPG.Value := DmOra.ConsE028CpgDESCPG.Value;
                                          DmFire.CadE028CpgABRCPG.Value := DmOra.ConsE028CpgABRCPG.Value;
                                          DmFire.CadE028CpgPRZMED.Value := DmOra.ConsE028CpgPRZMED.Value;
                                          DmFire.CadE028CpgQTDPAR.Value := DmOra.ConsE028CpgQTDPAR.Value;
                                          DmFire.CadE028CpgPERCOM.Value := DmOra.ConsE028CpgPERCOM.Value;
                                          DmFire.CadE028CpgSITCPG.Value := 'A';
                                          DmFire.CadE028CpgCPGLIB.Value := 'S';
                                          DmFire.CadE028Cpg.Post;
                                          DmFire.IBTransacao.CommitRetaining;

                                         DmOra.ConsE028Cpg.Next;
                                        end;//4
                                        CadE028Cpg.Close;
                                        CadE028Cpg.ParamByName('codusu').Value := DmFire.CadE100UsuCODUSU.Value;
                                        CadE028Cpg.Open;
                                   end;//3

                                 AssignFile ( Arq,'\\senior\ftproot\ArqUsu\'+DmFire.CadE100UsuCHAVE.Value+'.txt');
                                 Rewrite (Arq);

                                 Write(Arq, IntToStr(DmFire.CadE100UsuCODUSU.Value)+';');
                                 Write(Arq, DmFire.CadE100UsuNOMUSU.Value+';');
                                 Write(Arq, DmFire.CadE100UsuLOGUSU.Value+';');
                                 Write(Arq, DmFire.CadE100UsuSENUSU.Value+';');
                                 Write(Arq, IntToStr(DmFire.CadE100UsuCODREP.Value)+';');
                                 Write(Arq, DmFire.CadE100UsuNOMREP.Value+';');
                                 Write(Arq, DmFire.CadE100UsuCHAVE.Value+';');
                                 Write(Arq, DmFire.CadE100UsuSITUSU.Value+';');
                                 Write(Arq, DmFire.CadE100UsuATUUSU.Value+';');
                                 Write(Arq, DmFire.CadE100UsuUSUADM.Value+';');
                                 Write(Arq, DateToStr(DmFire.CadE100UsuDATCAD.Value)+';');
                                 CloseFile(arq);

                                 {if DmMySql.Banco.Connected = false then
                                    begin
                                       try
                                          //conecta com o banco
                                          DmMySql.Banco.Connected := False;
                                          DmMySql.Banco.Connected := True;
                                       except
                                           Application.MessageBox('Não foi possível conectar com WebService, verifique sua conexão com a internet!!','Atenção', MB_ICONWARNING+MB_OK);
                                           Abort;
                                       end;
                                    end;

                                  DmMySql.CadE100Usu.Close;
                                  DmMySql.CadE100Usu.ParamByName('CODUSU').Value := DmFire.CadE100UsuCODUSU.Value;
                                  DmMySql.CadE100Usu.Open;
                                  if DmMySql.CadE100Usu.IsEmpty then
                                     begin
                                       DmMySql.CadE100Usu.Insert;
                                       DmMySql.CadE100UsuCODUSU.Value := DmFire.CadE100UsuCODUSU.Value;
                                       DmMySql.CadE100UsuLOGUSU.Value := DmFire.CadE100UsuLOGUSU.Value;
                                       DmMySql.CadE100UsuSENUSU.Value := DmFire.CadE100UsuSENUSU.Value;
                                       DmMySql.CadE100UsuDATCAD.Value := DmFire.CadE100UsuDATCAD.Value;
                                       DmMySql.CadE100UsuSITUSU.Value := DmFire.CadE100UsuSITUSU.Value;
                                       DmMySql.CadE100UsuCHAVE.Value := DmFire.CadE100UsuCHAVE.Value;
                                       DmMySql.CadE100UsuNOMUSU.Value := DmFire.CadE100UsuNOMUSU.Value;
                                       DmMySql.CadE100UsuCODREP.Value := DmFire.CadE100UsuCODREP.Value;
                                       DmMySql.CadE100UsuNOMREP.Value := DmFire.CadE100UsuNOMREP.Value;
                                       DmMySql.CadE100UsuUSUADM.Value := DmFire.CadE100UsuUSUADM.Value;
                                       DmMySql.CadE100Usu.Post;
                                       DmMySql.CadE100Usu.ApplyUpdates;
                                     end
                                  else
                                     begin
                                       DmMySql.AtuE100Usu.Close;
                                       DmMySql.AtuE100Usu.ParamByName('LOGUSU').Value := DmFire.CadE100UsuLOGUSU.Value;
                                       DmMySql.AtuE100Usu.ParamByName('SENUSU').Value := DmFire.CadE100UsuSENUSU.Value;
                                       DmMySql.AtuE100Usu.ParamByName('DATCAD').Value := DmFire.CadE100UsuDATCAD.Value;
                                       DmMySql.AtuE100Usu.ParamByName('SITUSU').Value := DmFire.CadE100UsuSITUSU.Value;
                                       DmMySql.AtuE100Usu.ParamByName('CHAVE').Value := DmFire.CadE100UsuCHAVE.Value;
                                       DmMySql.AtuE100Usu.ParamByName('NOMUSU').Value := DmFire.CadE100UsuNOMUSU.Value;
                                       DmMySql.AtuE100Usu.ParamByName('CODREP').Value := DmFire.CadE100UsuCODREP.Value;
                                       DmMySql.AtuE100Usu.ParamByName('NOMREP').Value := DmFire.CadE100UsuNOMREP.Value;
                                       DmMySql.AtuE100Usu.ParamByName('USUADM').Value := DmFire.CadE100UsuUSUADM.Value;

                                       DmMySql.AtuE100Usu.ParamByName('CODUSU').Value := DmFire.CadE100UsuCODUSU.Value;
                                       DmMySql.AtuE100Usu.ExecSQL;
                                       DmMySql.AtuE100Usu.ApplyUpdates;
                                     end; }
                            end;//2

                         end;//1





end;

procedure TFCadUsuSysRep.BConfirmarSqlClick(Sender: TObject);
begin
     if trim(DBMComSql.Text) = '' then
        begin
          MessageDlg('Infome o Sql',mtWarning,[mbOK],0);
          ActiveControl := DBMComSql;
        end
     else
        begin
          DmFire.CadE100Sql.Post;
          DmFire.IBTransacao.CommitRetaining;

          DmFire.ConsE100Sql.Close;
          DmFire.ConsE100Sql.ParamByName('codusu').Value := vnCodUsu;
          DmFire.ConsE100Sql.Open;
        end;

end;

procedure TFCadUsuSysRep.BExcluirSqlClick(Sender: TObject);
begin
  if not DmFire.CadE100Sql.IsEmpty then
       begin
         if Application.MessageBox('Deseja realmente excluir o registro?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
         begin
           DmFire.CadE100Sql.Delete;
           DmFire.IBTransacao.CommitRetaining;

           DmFire.ConsE100Sql.Close;
           DmFire.ConsE100Sql.ParamByName('codusu').Value := vnCodUsu;
           DmFire.ConsE100Sql.Open;
         end;
       end;
end;

procedure TFCadUsuSysRep.BGeraCodigoClick(Sender: TObject);
var vnChave : integer;
begin
    if trim(DBECodRep.Text) <> '' then
       begin
          vnChave := StrToInt(trim(DBECodUsu.Text)) + StrToInt(trim(DBECodRep.Text)) * 3 + 5 + 999999;
          EdChave.Text := IntToStr(vnChave);
       end
    else
       begin
         vnChave := StrToInt(trim(DBECodUsu.Text)) * 3 + 5 + 999999;
          EdChave.Text := IntToStr(vnChave);
       end;
end;

procedure TFCadUsuSysRep.BGeraSqlDeleteClick(Sender: TObject);
begin
  //gera os comande de delete para limpar o banco na maquina do represenante


  DmFire.CadE100Sql.Open;
  DmFire.CadE100Sql.Insert;
  DmFire.CadE100SqlCODUSU.Value := vnCodUsu;
  DmFire.CadE100SqlDATGER.Value := date;
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('select numcon from e100sql where codusu = :codusu order by numcon desc');
  DmFire.ConsSql.ParamByName('codusu').Value := FCadUsuSysRep.vnCodUsu;
  DmFire.ConsSql.Open;
  if DmFire.ConsSql.IsEmpty then
     DmFire.CadE100SqlNUMCON.Value := 1
  else
     DmFire.CadE100SqlNUMCON.Value := DmFire.ConsSql.FieldByName('NUMCON').Value + 1;

     DmFire.CadE100SqlCOMSQL.Value := 'DELETE FROM USU120IPD';
  DmFire.CadE100Sql.Post;

  DmFire.CadE100Sql.Open;
  DmFire.CadE100Sql.Insert;
  DmFire.CadE100SqlCODUSU.Value := vnCodUsu;
  DmFire.CadE100SqlDATGER.Value := date;
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('select numcon from e100sql where codusu = :codusu order by numcon desc');
  DmFire.ConsSql.ParamByName('codusu').Value := FCadUsuSysRep.vnCodUsu;
  DmFire.ConsSql.Open;
  if DmFire.ConsSql.IsEmpty then
     DmFire.CadE100SqlNUMCON.Value := 1
  else
     DmFire.CadE100SqlNUMCON.Value := DmFire.ConsSql.FieldByName('NUMCON').Value + 1;

     DmFire.CadE100SqlCOMSQL.Value := 'DELETE FROM E120IPD';
  DmFire.CadE100Sql.Post;

  DmFire.CadE100Sql.Open;
  DmFire.CadE100Sql.Insert;
  DmFire.CadE100SqlCODUSU.Value := vnCodUsu;
  DmFire.CadE100SqlDATGER.Value := date;
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('select numcon from e100sql where codusu = :codusu order by numcon desc');
  DmFire.ConsSql.ParamByName('codusu').Value := FCadUsuSysRep.vnCodUsu;
  DmFire.ConsSql.Open;
  if DmFire.ConsSql.IsEmpty then
     DmFire.CadE100SqlNUMCON.Value := 1
  else
     DmFire.CadE100SqlNUMCON.Value := DmFire.ConsSql.FieldByName('NUMCON').Value + 1;

     DmFire.CadE100SqlCOMSQL.Value := 'DELETE FROM E120OBS';
  DmFire.CadE100Sql.Post;

  DmFire.CadE100Sql.Open;
  DmFire.CadE100Sql.Insert;
  DmFire.CadE100SqlCODUSU.Value := vnCodUsu;
  DmFire.CadE100SqlDATGER.Value := date;
  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('select numcon from e100sql where codusu = :codusu order by numcon desc');
  DmFire.ConsSql.ParamByName('codusu').Value := FCadUsuSysRep.vnCodUsu;
  DmFire.ConsSql.Open;
  if DmFire.ConsSql.IsEmpty then
     DmFire.CadE100SqlNUMCON.Value := 1
  else
     DmFire.CadE100SqlNUMCON.Value := DmFire.ConsSql.FieldByName('NUMCON').Value + 1;

     DmFire.CadE100SqlCOMSQL.Value := 'DELETE FROM E120PED';
  DmFire.CadE100Sql.Post;

  DmFire.IBTransacao.CommitRetaining;


end;

procedure TFCadUsuSysRep.BInserirSqlClick(Sender: TObject);
begin
  DmFire.CadE100Sql.Open;
  DmFire.CadE100Sql.Insert;

  DmFire.CadE100SqlCODUSU.Value := vnCodUsu;
  DmFire.CadE100SqlDATGER.Value := date;


  DmFire.ConsSql.Close;
  DmFire.ConsSql.SQL.Clear;
  DmFire.ConsSql.SQL.Add('select numcon from e100sql where codusu = :codusu order by numcon desc');
  DmFire.ConsSql.ParamByName('codusu').Value := FCadUsuSysRep.vnCodUsu;
  DmFire.ConsSql.Open;
  if DmFire.ConsSql.IsEmpty then
     DmFire.CadE100SqlNUMCON.Value := 1
  else
     DmFire.CadE100SqlNUMCON.Value := DmFire.ConsSql.FieldByName('NUMCON').Value + 1;

  ActiveControl := DBMComSql;
end;

procedure TFCadUsuSysRep.BitBtn1Click(Sender: TObject);
var vnCodUsu : integer;
    cursor : TCursor;
begin
  if EdDatIni.Date = 0 then
     begin
       MessageDlg('Informe a data inicial',mtWarning,[mbok],0);
       ActiveControl := EdDatIni;
     end
  else
   if EdDatFim.Date = 0 then
     begin
       MessageDlg('Informe a data final',mtWarning,[mbok],0);
       ActiveControl := EdDatFim;
     end
   else
   if trim(EdCodTpr.Text) = '' then
     begin
       MessageDlg('Informe a tabela de preço',mtWarning,[mbok],0);
       ActiveControl := EdCodTpr;
     end
   else
     begin//1
     cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;

     vnCodUsu := DmFire.CadE100UsuCODUSU.Value;
          DmOra.ConsE081Itp.Close;
          DmOra.ConsE081Itp.Parameters.ParamByName('datini').Value := EdDatIni.Date;
          DmOra.ConsE081Itp.Parameters.ParamByName('datfim').Value := EdDatFim.Date;
          DmOra.ConsE081Itp.Parameters.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);
          DmOra.ConsE081Itp.Open;
          if not DmOra.ConsE081Itp.IsEmpty then //gera a tabela e081tab
            begin//5
              DmFire.CadE081Tab.Close;
              DmFire.CadE081Tab.ParamByName('codemp').Value := DmOra.ConsE081ItpCODEMP.Value;
              DmFire.CadE081Tab.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);
              DmFire.CadE081Tab.ParamByName('codusu').Value := vnCodUsu;
              DmFire.CadE081Tab.Open;
              if DmFire.CadE081Tab.IsEmpty then
                 begin//6
                   DmFire.CadE081Tab.Insert;
                   DmFire.CadE081TabCODEMP.Value := DmOra.ConsE081ItpCODEMP.Value;
                   DmFire.CadE081TabCODTPR.Value := Trim(EdCodTpr.Text);
                   DmFire.CadE081TabCODUSU.Value := vnCodUsu;
                   DmFire.CadE081TabDESTPR.Value := 'TABELA DE VENDAS';
                   DmFire.CadE081TabSITTPR.Value := 'A';
                   DmFire.CadE081Tab.Post;
                   DmFire.IBTransacao.CommitRetaining;
                 end;//6
            end;//5

          DmOra.ConsE081Itp.First;
          while not DmOra.ConsE081Itp.Eof do
             begin//2
               DmFire.CadE081Itp.Close;
               DmFire.CadE081Itp.ParamByName('codemp').Value := DmOra.ConsE081ItpCODEMP.Value;
               DmFire.CadE081Itp.ParamByName('codtpr').Value := DmOra.ConsE081ItpCODTPR.Value;
               DmFire.CadE081Itp.ParamByName('codpro').Value := DmOra.ConsE081ItpCODPRO.Value;
               DmFire.CadE081Itp.ParamByName('codder').Value := DmOra.ConsE081ItpCODDER.Value;
               DmFire.CadE081Itp.ParamByName('codusu').Value := vnCodUsu;
               DmFire.CadE081Itp.Open;
               if not DmFire.CadE081Itp.IsEmpty then
                  begin//3
                     DmFire.CadE081Itp.Edit;
                     DmFire.CadE081ItpDESPRO.Value := DmOra.ConsE081ItpDESPRO.Value;
                     DmFire.CadE081ItpPREBAS.Value := DmOra.ConsE081ItpPREBAS.AsCurrency;
                     DmFire.CadE081ItpTOLMAI.Value := DmOra.ConsE081ItpTOLMAI.AsCurrency;
                     if ChTolDesc.Checked then
                        begin
                          DmFire.CadE081ItpTOLMEN.Value := EdTolDesc.Value;
                          DmFire.CadE081ItpVLRMEN.Value := DmFire.CadE081ItpPREBAS.Value * EdTolDesc.Value / 100;
                        end
                     else
                        begin
                          DmFire.CadE081ItpTOLMEN.Value := DmOra.ConsE081ItpTOLMEN.Value;
                          DmFire.CadE081ItpVLRMEN.Value := DmOra.ConsE081ItpVLTMEN.AsCurrency;
                        end;
                     DmFire.CadE081ItpVLRMAI.Value := DmOra.ConsE081ItpVLTMAI.AsCurrency;
                     DmFire.CadE081ItpDATINI.Value := EdDatIni.Date;
                     DmFire.CadE081ItpDATFIM.Value := EdDatFim.Date;
                     DmFire.CadE081ItpSITREG.Value := DmOra.ConsE081ItpSITREG.Value;
                     DmFire.CadE081Itp.Post;
                     DmFire.IBTransacao.CommitRetaining;

                  end//3
               else
                  begin//4
                     DmFire.CadE081Itp.Insert;
                     DmFire.CadE081ItpCODEMP.Value := DmOra.ConsE081ItpCODEMP.Value;
                     DmFire.CadE081ItpCODTPR.Value := DmOra.ConsE081ItpCODTPR.Value;
                     DmFire.CadE081ItpCODPRO.Value := DmOra.ConsE081ItpCODPRO.Value;
                     DmFire.CadE081ItpCODDER.Value := DmOra.ConsE081ItpCODDER.Value;
                     DmFire.CadE081ItpCODUSU.Value := vnCodUsu;
                     DmFire.CadE081ItpDESPRO.Value := DmOra.ConsE081ItpDESPRO.Value;
                     DmFire.CadE081ItpPREBAS.Value := DmOra.ConsE081ItpPREBAS.AsCurrency;
                     DmFire.CadE081ItpTOLMAI.Value := DmOra.ConsE081ItpTOLMAI.AsCurrency;
                     if ChTolDesc.Checked then
                        begin
                          DmFire.CadE081ItpTOLMEN.Value := EdTolDesc.Value;
                          DmFire.CadE081ItpVLRMEN.Value := DmFire.CadE081ItpPREBAS.Value * EdTolDesc.Value / 100;
                        end
                     else
                        begin
                          DmFire.CadE081ItpTOLMEN.Value := DmOra.ConsE081ItpTOLMEN.Value;
                          DmFire.CadE081ItpVLRMEN.Value := DmOra.ConsE081ItpVLTMEN.AsCurrency;
                        end;
                     DmFire.CadE081ItpVLRMAI.Value := DmOra.ConsE081ItpVLTMAI.AsCurrency;
                     DmFire.CadE081ItpDATINI.Value := EdDatIni.Date;
                     DmFire.CadE081ItpDATFIM.Value := EdDatFim.Date;
                     DmFire.CadE081ItpSITREG.Value := DmOra.ConsE081ItpSITREG.Value;
                     DmFire.CadE081Itp.Post;
                     DmFire.IBTransacao.CommitRetaining;
                  end;//4

               DmOra.ConsE081Itp.Next;
             end;//2
            EdCodTprExit(Sender);
            Screen.Cursor := cursor;
     end;//1

end;

procedure TFCadUsuSysRep.BLimpaBancoSysRepClick(Sender: TObject);
begin
   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e028cpg');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e075cor');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e075der');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e075ldc');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e075pro');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e081itp');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e081tab');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e085hcl');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e085cli');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e100usu');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e100sql');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e120cgp');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e120ped');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e120ipd');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from usu120ipd');
   DmFire.SqlSysRep.Open;

   DmFire.SqlSysRep.Close;
   DmFire.SqlSysRep.SQL.Clear;
   DmFire.SqlSysRep.SQL.Add('delete from e120obs');
   DmFire.SqlSysRep.Open;

   DmFire.IBTransacaoSysRep.Commit;
end;

procedure TFCadUsuSysRep.BNovoClick(Sender: TObject);
begin

    DmFire.CadE100Usu.Open;
    DmFire.CadE100Usu.Insert;
    DmFire.CadE100UsuDATCAD.Value := Date;
    EdDatCad.Text := DateToStr(Date);
    EdSenUsu.Clear;
    EdChave.Clear;
    EdAtuUsu.ItemIndex := 0;
    EdSitUsu.ItemIndex := 0;
end;

procedure TFCadUsuSysRep.BZerarNControleClick(Sender: TObject);
begin
if not DmFire.CadE100Usu.IsEmpty then
   begin//1
     if Application.MessageBox('Deseja realmente continuar?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
         begin//2
            DmOra.ConsSql.Close;
            DmOra.ConsSql.SQL.Clear;
            DmOra.ConsSql.SQL.Add('update (select e120obs.usu_numcom from e120obs');
            DmOra.ConsSql.SQL.Add('inner join e120ped on e120ped.codemp = e120obs.codemp and');
            DmOra.ConsSql.SQL.Add('e120ped.codfil = e120obs.codfil and');
            DmOra.ConsSql.SQL.Add('e120ped.numped = e120obs.numped');
            DmOra.ConsSql.SQL.Add('where');
            DmOra.ConsSql.SQL.Add('e120ped.codrep = :codrep)a');
            DmOra.ConsSql.SQL.Add('set a.usu_numcom = 0');
            DmOra.ConsSql.Parameters.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
            DmOra.ConsSql.ExecSQL;

            DmOra.ConsSql.Close;
            DmOra.ConsSql.SQL.Clear;
            DmOra.ConsSql.SQL.Add('update (select usu_t120ipd.usu_numcom from usu_t120ipd');
            DmOra.ConsSql.SQL.Add('inner join e120ped on e120ped.codemp = usu_t120ipd.usu_codemp and');
            DmOra.ConsSql.SQL.Add('e120ped.codfil = usu_t120ipd.usu_codfil and');
            DmOra.ConsSql.SQL.Add('e120ped.numped = usu_t120ipd.usu_numped');
            DmOra.ConsSql.SQL.Add('where');
            DmOra.ConsSql.SQL.Add('e120ped.codrep = :codrep)a');
            DmOra.ConsSql.SQL.Add('set a.usu_numcom = 0');
            DmOra.ConsSql.Parameters.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
            DmOra.ConsSql.ExecSQL;

            DmOra.ConsSql.Close;
            DmOra.ConsSql.SQL.Clear;
            DmOra.ConsSql.SQL.Add('update (select e120ipd.usu_numcom from e120ipd');
            DmOra.ConsSql.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
            DmOra.ConsSql.SQL.Add('e120ped.codfil = e120ipd.codfil and');
            DmOra.ConsSql.SQL.Add('e120ped.numped = e120ipd.numped');
            DmOra.ConsSql.SQL.Add('where');
            DmOra.ConsSql.SQL.Add('e120ped.codrep = :codrep)a');
            DmOra.ConsSql.SQL.Add('set a.usu_numcom = 0');
            DmOra.ConsSql.Parameters.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
            DmOra.ConsSql.ExecSQL;

            DmOra.ConsSql.Close;
            DmOra.ConsSql.SQL.Clear;
            DmOra.ConsSql.SQL.Add('update (select e120ped.usu_numcom from e120ped');
            DmOra.ConsSql.SQL.Add('where');
            DmOra.ConsSql.SQL.Add('e120ped.codrep = :codrep) a');
            DmOra.ConsSql.SQL.Add('set a.usu_numcom = 0');
            DmOra.ConsSql.Parameters.ParamByName('codrep').Value := DmFire.CadE100UsuCODREP.Value;
            DmOra.ConsSql.ExecSQL;
         end;//2
   end;//1

end;

procedure TFCadUsuSysRep.CadE028CpgBeforePost(DataSet: TDataSet);
begin
    CadE028CpgCPGLIB.Value := CadE028CpgCPGLIB.Value[1];

end;

procedure TFCadUsuSysRep.DBCPGLIBExit(Sender: TObject);
begin
if CadE028Cpg.State in[dsinsert,dsedit] then
   begin
    CadE028Cpg.Post;
    DmFire.IBTransacao.CommitRetaining;
   end;

end;

procedure TFCadUsuSysRep.DBCPGLIBKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['S','N',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFCadUsuSysRep.DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #32) and (not CadE028Cpg.IsEmpty) then
    begin
    CadE028Cpg.Open;
    CadE028Cpg.Edit;

      if CadE028CpgCPGLIB.Value = 'S' then
         CadE028CpgCPGLIB.Value := 'N'
      else
         CadE028CpgCPGLIB.Value := 'S';

         CadE028Cpg.Post;
         DmFire.IBTransacao.CommitRetaining;

    end;
end;

procedure TFCadUsuSysRep.DBECPGLIBKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['S','N',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFCadUsuSysRep.DBGrid1DblClick(Sender: TObject);
begin
     DmFire.CadE100Usu.Close;
     DmFire.CadE100Usu.ParamByName('codusu').Value := ConsE100UsuCODUSU.Value;
     DmFire.CadE100Usu.Open;
     vnCodUsu := DmFire.CadE100UsuCODUSU.Value;
     vnCodRep := DmFire.CadE100UsuCODREP.Value;

     EdChave.Text := DmFire.CadE100UsuCHAVE.Value;
     EdSenUsu.Text := DmFire.CadE100UsuSENUSU.Value;
     EdDatCad.Text := DateToStr(DmFire.CadE100UsuDATCAD.Value);

     if DmFire.CadE100UsuATUUSU.Value = 'S' then
        EdAtuUsu.ItemIndex := 0
     else
        EdAtuUsu.ItemIndex := 1;

     if DmFire.CadE100UsuSITUSU.Value = 'A' then
        EdSitUsu.ItemIndex := 0
     else
        EdSitUsu.ItemIndex := 1;

     CadE028Cpg.Close;
     CadE028Cpg.ParamByName('codusu').Value := DmFire.CadE100UsuCODUSU.Value;
     CadE028Cpg.Open;
    // ClientE028Cpg.Open;

    DmFire.CadE100Sql.Close;
    //consulta os comandos sql deste usuario
    DmFire.ConsE100Sql.Close;
    DmFire.ConsE100Sql.ParamByName('codusu').Value := vnCodUsu;
    DmFire.ConsE100Sql.Open;

    EdCodTprExit(Sender);
     PaginaControle.ActivePage := TbCadastro;



end;

procedure TFCadUsuSysRep.DBGrid1Enter(Sender: TObject);
begin
    KeyPreview := false;
end;

procedure TFCadUsuSysRep.DBGrid1Exit(Sender: TObject);
begin
 KeyPreview := true;
end;

procedure TFCadUsuSysRep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      begin
        DBGrid1DblClick(Sender);
      end;
end;

procedure TFCadUsuSysRep.DBGrid2DblClick(Sender: TObject);
begin
       DmFire.CadE081Itp.Close;
       DmFire.CadE081Itp.ParamByName('codemp').Value := DmFire.ConsE081ItpCODEMP.Value;
       DmFire.CadE081Itp.ParamByName('codtpr').Value := DmFire.ConsE081ItpCODTPR.Value;
       DmFire.CadE081Itp.ParamByName('codpro').Value := DmFire.ConsE081ItpCODPRO.Value;
       DmFire.CadE081Itp.ParamByName('codder').Value := DmFire.ConsE081ItpCODDER.Value;
       DmFire.CadE081Itp.ParamByName('codusu').Value := DmFire.ConsE081ItpCODUSU.Value;
       DmFire.CadE081Itp.Open;
       if not DmFire.CadE081Itp.IsEmpty then
          begin
            DmFire.CadE081Itp.Edit;
            FAlteraPerTolTabPreco := TFAlteraPerTolTabPreco.Create(Self);
            FAlteraPerTolTabPreco.LProduto.Caption := DmFire.CadE081ItpCODPRO.Value+'  -  '+DmFire.CadE081ItpDESPRO.Value;
            FAlteraPerTolTabPreco.LDerivacao.Caption := DmFire.CadE081ItpCODDER.Value;
            FAlteraPerTolTabPreco.EdPrecoBase.Value := DmFire.CadE081ItpPREBAS.Value;
            FAlteraPerTolTabPreco.EdPerTolMen.Value := DmFire.CadE081ItpTOLMEN.Value;
            FAlteraPerTolTabPreco.EdPerTolMai.Value := DmFire.CadE081ItpTOLMAI.Value;
            FAlteraPerTolTabPreco.EdVlrMen.Value := DmFire.CadE081ItpVLRMEN.Value;
            FAlteraPerTolTabPreco.EdVlrMai.Value := DmFire.CadE081ItpVLRMAI.Value;
            FAlteraPerTolTabPreco.ShowModal;
            FreeAndNil(FAlteraPerTolTabPreco);
          end;

end;

procedure TFCadUsuSysRep.DBGrid2Enter(Sender: TObject);
begin
KeyPreview := false;
end;

procedure TFCadUsuSysRep.DBGrid2Exit(Sender: TObject);
begin
KeyPreview := true;
end;

procedure TFCadUsuSysRep.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       DBGrid2DblClick(Sender);
     end;
end;

procedure TFCadUsuSysRep.DsCadE100SqlStateChange(Sender: TObject);
begin
  if DmFire.CadE100Sql.State in [dsinsert,dsedit] then
     begin
        BInserirSql.Enabled := false;
        BAlterarSql.Enabled := false;
        BExcluirSql.Enabled := false;
        BCancelarSql.Enabled := true;
        BConfirmarSql.Enabled := true;

     end
  else
     begin
        BInserirSql.Enabled := true;
        BAlterarSql.Enabled := true;
        BExcluirSql.Enabled := true;
        BCancelarSql.Enabled := false;
        BConfirmarSql.Enabled := false;
     end;
end;

procedure TFCadUsuSysRep.DsCadE100UsuStateChange(Sender: TObject);
begin
    if DmFire.CadE100Usu.State in [dsinsert,dsedit] then
       begin
         BNovo.Enabled := false;
         BAltera.Enabled := false;
         BCancelar.Enabled := true;
         BConfirmar.Enabled := true;
       end
    else
       begin
         BNovo.Enabled := true;
         BAltera.Enabled := true;
         BCancelar.Enabled := false;
         BConfirmar.Enabled := false;
       end;
end;

procedure TFCadUsuSysRep.EdCodDerPesqChange(Sender: TObject);
begin
if trim(EdCodDerPesq.Text) <> '' then
     begin//1
       DmFire.ConsE081Itp.Close;
       DmFire.ConsE081Itp.SQL.Clear;
       DmFire.ConsE081Itp.SQL.Add('select * from E081ITP');
       DmFire.ConsE081Itp.SQL.Add('where codtpr = :codtpr');
       DmFire.ConsE081Itp.SQL.Add(' and codusu = :codusu');
       DmFire.ConsE081Itp.SQL.Add(' and codder like'+QuotedStr('%'+EdCodDerPesq.Text+'%'));
       if trim(EdCodProPesq.Text) <> '' then
       DmFire.ConsE081Itp.SQL.Add(' and codpro like'+QuotedStr('%'+EdCodProPesq.Text+'%'));
       if trim(EdDesProPesq.Text) <> '' then
       DmFire.ConsE081Itp.SQL.Add(' and despro like'+QuotedStr('%'+EdDesProPesq.Text+'%'));

       DmFire.ConsE081Itp.SQL.Add(' order by codpro,codder');
       DmFire.ConsE081Itp.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);
       DmFire.ConsE081Itp.ParamByName('codusu').Value := vnCodUsu;
       DmFire.ConsE081Itp.Open;

     end;//1
end;

procedure TFCadUsuSysRep.EdCodProPesqChange(Sender: TObject);
begin
if trim(EdCodProPesq.Text) <> '' then
     begin//1
       DmFire.ConsE081Itp.Close;
       DmFire.ConsE081Itp.SQL.Clear;
       DmFire.ConsE081Itp.SQL.Add('select * from E081ITP');
       DmFire.ConsE081Itp.SQL.Add('where codtpr = :codtpr');
       DmFire.ConsE081Itp.SQL.Add(' and codusu = :codusu');
       DmFire.ConsE081Itp.SQL.Add(' and codpro like'+QuotedStr('%'+EdCodProPesq.Text+'%'));
       if trim(EdDesProPesq.Text) <> '' then
       DmFire.ConsE081Itp.SQL.Add(' and despro like'+QuotedStr('%'+EdDesProPesq.Text+'%'));
       if trim(EdCodDerPesq.Text) <> '' then
       DmFire.ConsE081Itp.SQL.Add(' and codder like'+QuotedStr('%'+EdCodDerPesq.Text+'%'));

       DmFire.ConsE081Itp.SQL.Add(' order by codpro,codder');
       DmFire.ConsE081Itp.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);
       DmFire.ConsE081Itp.ParamByName('codusu').Value := vnCodUsu;
       DmFire.ConsE081Itp.Open;

     end;//1
end;

procedure TFCadUsuSysRep.EdCodTprExit(Sender: TObject);
begin
  if trim(EdCodTpr.Text) <> '' then
     begin//1
       DmFire.ConsE081Itp.Close;
       DmFire.ConsE081Itp.SQL.Clear;
       DmFire.ConsE081Itp.SQL.Add('select * from E081ITP');
       DmFire.ConsE081Itp.SQL.Add('where codtpr = :codtpr');
       DmFire.ConsE081Itp.SQL.Add(' and codusu = :codusu');
       DmFire.ConsE081Itp.SQL.Add(' order by codpro,codder');
       DmFire.ConsE081Itp.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);
       DmFire.ConsE081Itp.ParamByName('codusu').Value := vnCodUsu;
       DmFire.ConsE081Itp.Open;

     end;//1

end;

procedure TFCadUsuSysRep.EdDesProPesqChange(Sender: TObject);
begin
if trim(EdDesProPesq.Text) <> '' then
     begin//1
       DmFire.ConsE081Itp.Close;
       DmFire.ConsE081Itp.SQL.Clear;
       DmFire.ConsE081Itp.SQL.Add('select * from E081ITP');
       DmFire.ConsE081Itp.SQL.Add('where codtpr = :codtpr');
       DmFire.ConsE081Itp.SQL.Add(' and codusu = :codusu');
       DmFire.ConsE081Itp.SQL.Add(' and despro like'+QuotedStr('%'+EdDesProPesq.Text+'%'));
       if trim(EdCodProPesq.Text) <> '' then
       DmFire.ConsE081Itp.SQL.Add(' and codpro like'+QuotedStr('%'+EdCodProPesq.Text+'%'));
       if trim(EdCodDerPesq.Text) <> '' then
       DmFire.ConsE081Itp.SQL.Add(' and codder like'+QuotedStr('%'+EdCodDerPesq.Text+'%'));

       DmFire.ConsE081Itp.SQL.Add(' order by codpro,codder');
       DmFire.ConsE081Itp.ParamByName('codtpr').Value := Trim(EdCodTpr.Text);
       DmFire.ConsE081Itp.ParamByName('codusu').Value := vnCodUsu;
       DmFire.ConsE081Itp.Open;

     end;//1
end;

procedure TFCadUsuSysRep.EdPesquisaChange(Sender: TObject);
begin
    ConsE100Usu.Close;
    ConsE100Usu.SQL.Clear;
    ConsE100Usu.SQL.Add('select * from e100usu');
    ConsE100Usu.SQL.Add('where nomusu like'+QuotedStr('%'+EdPesquisa.Text+'%'));
    ConsE100Usu.SQL.Add('order by nomusu');
    ConsE100Usu.Open;
end;

procedure TFCadUsuSysRep.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCadUsuSysRep.FormShow(Sender: TObject);
begin
    PaginaControle.ActivePageIndex := 0;
    PaginaControle2.ActivePageIndex := 0;
    DmFire.CadE100Usu.Close;
    vnCodUsu := 0;
    vnCodRep := 0;
end;

procedure TFCadUsuSysRep.TbComandosSqlShow(Sender: TObject);
begin
    DmFire.CadE100Sql.Close;
    DmFire.ConsE100Sql.Close;
    DmFire.ConsE100Sql.ParamByName('codusu').Value := vnCodUsu;
    DmFire.ConsE100Sql.Open;

end;

end.
