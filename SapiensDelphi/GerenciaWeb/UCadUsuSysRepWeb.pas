unit UCadUsuSysRepWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, rxToolEdit, rxCurrEdit,
  ComCtrls, Grids, DBGrids;

type
  TFCadUsuSysRepWeb = class(TForm)
    PaginaControle: TPageControl;
    dsCadE100Usu: TDataSource;
    tsCadastro: TTabSheet;
    dbedtCODUSU: TDBEdit;
    dbedtNOMUSU: TDBEdit;
    dbedtLOGUSU: TDBEdit;
    dbedtSENUSU: TDBEdit;
    dbedtCHAVE: TDBEdit;
    dbedtCODREP: TDBEdit;
    dbedtNOMREP: TDBEdit;
    dbedtNCIE: TDBEdit;
    dbedtNCFE: TDBEdit;
    dbedtNCAE: TDBEdit;
    dbedtNCII: TDBEdit;
    dbedtNCFI: TDBEdit;
    dbedtNCAI: TDBEdit;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    lbl10: TLabel;
    lbl14: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl11: TLabel;
    lbl18: TLabel;
    lbl25: TLabel;
    tsConsulta: TTabSheet;
    dsConsE100Usu: TDataSource;
    dbg1: TDBGrid;
    dbcbbSITUSU: TDBComboBox;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dsCadE100UsuStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure tsConsultaShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsuSysRepWeb: TFCadUsuSysRepWeb;

implementation

uses UDmFire, UDmFireRep;

{$R *.dfm}

procedure TFCadUsuSysRepWeb.btnAlterarClick(Sender: TObject);
begin
    if not DmFireRep.CadE100Usu.IsEmpty then
       begin
          DmFireRep.CadE100Usu.Edit;
       end;
end;

procedure TFCadUsuSysRepWeb.btnCancelarClick(Sender: TObject);
begin
   DmFireRep.CadE100Usu.Cancel;
end;

procedure TFCadUsuSysRepWeb.btnConfirmarClick(Sender: TObject);
var vaStatusClient : TDataSetState;
    vnNovaFaixaNumCon : Integer;
begin
    vaStatusClient := DmFireRep.CadE100Usu.State;


    if DmFireRep.CadE100Usu.State in [dsInsert] then //busca a faixa de numeros de controle
       begin
           DmFireRep.UltimaFaixaNumCon.Close;
           DmFireRep.UltimaFaixaNumCon.Open;
           if DmFireRep.UltimaFaixaNumConULTIMA_I.Value > DmFireRep.UltimaFaixaNumConULTIMA_E.Value then
              begin
                vnNovaFaixaNumCon := DmFireRep.UltimaFaixaNumConULTIMA_I.Value + 1;
              end
           else
           if DmFireRep.UltimaFaixaNumConULTIMA_E.Value > DmFireRep.UltimaFaixaNumConULTIMA_I.Value then
              begin
                vnNovaFaixaNumCon := DmFireRep.UltimaFaixaNumConULTIMA_E.Value + 1;
              end;


            DmFireRep.CadE100UsuNCII.Value := vnNovaFaixaNumCon;
            DmFireRep.CadE100UsuNCFI.AsInteger := vnNovaFaixaNumCon + 500;
            DmFireRep.CadE100UsuNCAI.Value := vnNovaFaixaNumCon;

            DmFireRep.CadE100UsuNCIE.Value := DmFireRep.CadE100UsuNCFI.AsInteger + 1;
            DmFireRep.CadE100UsuNCFE.Value := DmFireRep.CadE100UsuNCIE.Value + 500;
            DmFireRep.CadE100UsuNCAE.Value := DmFireRep.CadE100UsuNCIE.Value;
       end;

    DmFireRep.CadE100Usu.Post;
    DmFireRep.ibtTransacao.CommitRetaining;


   { if vaStatusClient in [dsInsert] then
       begin
         DmMySql.CadE100Usu.Open;
         DmMySql.CadE100Usu.Insert;
         DmMySql.CadE100UsuCODUSU.Value := DmMySql.ClientCadE100UsuCODUSU.Value;
         DmMySql.CadE100UsuLOGUSU.Value := DmMySql.ClientCadE100UsuLOGUSU.Value;
         DmMySql.CadE100UsuSENUSU.Value := DmMySql.ClientCadE100UsuSENUSU.Value;
         DmMySql.CadE100UsuDATCAD.Value := DmMySql.ClientCadE100UsuDATCAD.Value;
         DmMySql.CadE100UsuSITUSU.Value := DmMySql.ClientCadE100UsuSITUSU.Value;
         DmMySql.CadE100UsuCHAVE.Value := DmMySql.ClientCadE100UsuCHAVE.Value;
         DmMySql.CadE100UsuNOMUSU.Value := DmMySql.ClientCadE100UsuNOMUSU.Value;
         DmMySql.CadE100UsuCODREP.Value := DmMySql.ClientCadE100UsuCODREP.Value;
         DmMySql.CadE100UsuNOMREP.Value := DmMySql.ClientCadE100UsuNOMREP.Value;
         DmMySql.CadE100UsuUSUADM.Value := DmMySql.ClientCadE100UsuUSUADM.Value;
         DmMySql.CadE100UsuNCIE.Value := DmMySql.ClientCadE100UsuNCIE.Value;
         DmMySql.CadE100UsuNCFE.Value := DmMySql.ClientCadE100UsuNCFE.Value;
         DmMySql.CadE100UsuNCAE.Value := DmMySql.ClientCadE100UsuNCAE.Value;
         DmMySql.CadE100UsuNCII.Value := DmMySql.ClientCadE100UsuNCII.Value;
         DmMySql.CadE100UsuNCFI.Value := DmMySql.ClientCadE100UsuNCFI.Value;
         DmMySql.CadE100UsuNCAI.Value := DmMySql.ClientCadE100UsuNCAI.Value;
         DmMySql.CadE100Usu.Post;
         DmMySql.CadE100Usu.ApplyUpdates;


       end
    else
    if vaStatusClient in [dsEdit] then
       begin
         DmMySql.CadE100Usu.Close;
         DmMySql.CadE100Usu.ParamByName('CODUSU').Value := DmMySql.ClientCadE100UsuCODUSU.Value;
         DmMySql.CadE100Usu.Open;
         DmMySql.CadE100Usu.Edit;
         DmMySql.CadE100UsuLOGUSU.Value := DmMySql.ClientCadE100UsuLOGUSU.Value;
         DmMySql.CadE100UsuSENUSU.Value := DmMySql.ClientCadE100UsuSENUSU.Value;
         DmMySql.CadE100UsuDATCAD.Value := DmMySql.ClientCadE100UsuDATCAD.Value;
         DmMySql.CadE100UsuSITUSU.Value := DmMySql.ClientCadE100UsuSITUSU.Value;
         DmMySql.CadE100UsuCHAVE.Value := DmMySql.ClientCadE100UsuCHAVE.Value;
         DmMySql.CadE100UsuNOMUSU.Value := DmMySql.ClientCadE100UsuNOMUSU.Value;
         DmMySql.CadE100UsuCODREP.Value := DmMySql.ClientCadE100UsuCODREP.Value;
         DmMySql.CadE100UsuNOMREP.Value := DmMySql.ClientCadE100UsuNOMREP.Value;
         DmMySql.CadE100UsuUSUADM.Value := DmMySql.ClientCadE100UsuUSUADM.Value;
         DmMySql.CadE100UsuNCIE.Value := DmMySql.ClientCadE100UsuNCIE.Value;
         DmMySql.CadE100UsuNCFE.Value := DmMySql.ClientCadE100UsuNCFE.Value;
         DmMySql.CadE100UsuNCAE.Value := DmMySql.ClientCadE100UsuNCAE.Value;
         DmMySql.CadE100UsuNCII.Value := DmMySql.ClientCadE100UsuNCII.Value;
         DmMySql.CadE100UsuNCFI.Value := DmMySql.ClientCadE100UsuNCFI.Value;
         DmMySql.CadE100UsuNCAI.Value := DmMySql.ClientCadE100UsuNCAI.Value;
         DmMySql.CadE100Usu.Post;
         DmMySql.CadE100Usu.ApplyUpdates;
       end;}

end;

procedure TFCadUsuSysRepWeb.btnNovoClick(Sender: TObject);
begin
  DmFireRep.CadE100Usu.Open;
  DmFireRep.CadE100Usu.Insert;
end;

procedure TFCadUsuSysRepWeb.dbg1DblClick(Sender: TObject);
begin
  if not DmFireRep.ConsE100Usu.IsEmpty then
     begin
         DmFireRep.CadE100Usu.Close;
         DmFireRep.CadE100Usu.ParamByName('CODUSU').Value := DmFireRep.ConsE100UsuCODUSU.Value;
         DmFireRep.CadE100Usu.Open;
         PaginaControle.ActivePageIndex := 0;
     end;
end;

procedure TFCadUsuSysRepWeb.dsCadE100UsuStateChange(Sender: TObject);
begin
  if DmFireRep.CadE100Usu.State in [dsInsert,dsEdit] then
     begin
       btnNovo.Enabled := false;
       btnExcluir.Enabled := false;
       btnAlterar.Enabled := False;
       btnCancelar.Enabled := True;
       btnConfirmar.Enabled := True;
     end
  else
     begin
       btnNovo.Enabled := True;
       btnExcluir.Enabled := True;
       btnAlterar.Enabled := True;
       btnCancelar.Enabled := False;
       btnConfirmar.Enabled := False;
     end;
end;

procedure TFCadUsuSysRepWeb.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFCadUsuSysRepWeb.FormShow(Sender: TObject);
begin
  DmFireRep.CadE100Usu.Close;
end;

procedure TFCadUsuSysRepWeb.tsConsultaShow(Sender: TObject);
begin
    DmFireRep.ConsE100Usu.Close;
    DmFireRep.ConsE100Usu.Open;
end;

end.
