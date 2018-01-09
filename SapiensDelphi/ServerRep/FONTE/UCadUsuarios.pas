unit UCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons, IBCustomDataSet,
  IBQuery, ExtCtrls, Grids, DBGrids, DBCGrids, Provider, DBClient;

type
  TFCadUsuarios = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsuarios: TFCadUsuarios;

implementation

uses UDmFire, UDmOra;

{$R *.dfm}

procedure TFCadUsuarios.BAlteraClick(Sender: TObject);
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

procedure TFCadUsuarios.BCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Cancelar o Registro?', 'Cancelar Registro', MB_ICONQUESTION+MB_YESNO) = idyes then
    Begin
     DmFire.CadE100Usu.Cancel;

     EdSenUsu.Clear;
     EdChave.Clear;
     EdDatCad.Clear;
    end;
end;

procedure TFCadUsuarios.BConfirmarClick(Sender: TObject);
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
                                     DmOra.ConsE028Cpg.SQL.Add('select codemp,codcpg,descpg,abrcpg,przmed,qtdpar from e028cpg order by codcpg');
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
                                          DmFire.CadE028CpgSITCPG.Value := 'A';
                                          DmFire.CadE028CpgCPGLIB.Value := 'S';
                                          DmFire.CadE028Cpg.Post;

                                         DmOra.ConsE028Cpg.Next;
                                        end;//4
                                        CadE028Cpg.Close;
                                        CadE028Cpg.ParamByName('codusu').Value := DmFire.CadE100UsuCODUSU.Value;
                                        CadE028Cpg.Open;
                                   end;//3

                                 AssignFile ( Arq,'C:\ftproot\ArqUsu\'+DmFire.CadE100UsuCHAVE.Value+'.txt');
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
                            end;//2

                         end;//1





end;

procedure TFCadUsuarios.BGeraCodigoClick(Sender: TObject);
var vnChave : integer;
begin
    vnChave := StrToInt(trim(DBECodUsu.Text)) + StrToInt(trim(DBECodRep.Text)) * 3 + 5 + 999999;
    EdChave.Text := IntToStr(vnChave);
end;

procedure TFCadUsuarios.BNovoClick(Sender: TObject);
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

procedure TFCadUsuarios.CadE028CpgBeforePost(DataSet: TDataSet);
begin
    CadE028CpgCPGLIB.Value := CadE028CpgCPGLIB.Value[1];

end;

procedure TFCadUsuarios.DBCPGLIBExit(Sender: TObject);
begin
if CadE028Cpg.State in[dsinsert,dsedit] then
   begin
    CadE028Cpg.Post;
    DmFire.IBTransacao.CommitRetaining;
   end;

end;

procedure TFCadUsuarios.DBCPGLIBKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['S','N',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFCadUsuarios.DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #32) and (not CadE028Cpg.IsEmpty) then
    begin
    CadE028Cpg.Open;
    CadE028Cpg.Edit;

      if CadE028CpgCPGLIB.Value = 'S' then
         CadE028CpgCPGLIB.Value := 'N'
      else
         CadE028CpgCPGLIB.Value := 'S';
    end;
end;

procedure TFCadUsuarios.DBECPGLIBKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['S','N',#08] ) then
  begin
    key:=#0;
  end;
end;

procedure TFCadUsuarios.DBGrid1DblClick(Sender: TObject);
begin
     DmFire.CadE100Usu.Close;
     DmFire.CadE100Usu.ParamByName('codusu').Value := ConsE100UsuCODUSU.Value;
     DmFire.CadE100Usu.Open;

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


     PaginaControle.ActivePage := TbCadastro;



end;

procedure TFCadUsuarios.DBGrid1Enter(Sender: TObject);
begin
    KeyPreview := false;
end;

procedure TFCadUsuarios.DBGrid1Exit(Sender: TObject);
begin
 KeyPreview := true;
end;

procedure TFCadUsuarios.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      begin
        DBGrid1DblClick(Sender);
      end;
end;

procedure TFCadUsuarios.DsCadE100UsuStateChange(Sender: TObject);
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

procedure TFCadUsuarios.EdPesquisaChange(Sender: TObject);
begin
    ConsE100Usu.Close;
    ConsE100Usu.SQL.Clear;
    ConsE100Usu.SQL.Add('select * from e100usu');
    ConsE100Usu.SQL.Add('where nomusu like'+QuotedStr('%'+EdPesquisa.Text+'%'));
    ConsE100Usu.SQL.Add('order by nomusu');
    ConsE100Usu.Open;
end;

procedure TFCadUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCadUsuarios.FormShow(Sender: TObject);
begin
    PaginaControle.ActivePageIndex := 0;
    DmFire.CadE100Usu.Open;
end;

end.
