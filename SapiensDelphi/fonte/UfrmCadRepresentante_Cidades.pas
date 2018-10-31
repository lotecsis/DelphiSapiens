unit UfrmCadRepresentante_Cidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit, Grids, DBGrids, DB,
  ADODB, Provider, DBClient, DBCtrls;

type
  TfrmCadRepresentante_Cidades = class(TForm)
    lbl1: TLabel;
    edtCodRep: TCurrencyEdit;
    btnConsRep: TBitBtn;
    edtDesRep: TEdit;
    dbgrdCidDisponiveis: TDBGrid;
    dbgrdCidRep: TDBGrid;
    btnLimpar: TBitBtn;
    edtCidDisponivel: TEdit;
    edtCidRep: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    cbbUfDisponivel: TComboBox;
    cbbUfRep: TComboBox;
    ConsCidadesDisp: TADOQuery;
    ConsCidadesDispCODRAI: TIntegerField;
    ConsCidadesDispNOMCID: TStringField;
    ConsCidadesDispSIGUFS: TStringField;
    ConsCidadesDispPOPCID: TIntegerField;
    ConsCidadesDispPOTALF: TBCDField;
    ConsCidadesDispLOCGEO: TStringField;
    ConsCidadesDispINDEXP: TIntegerField;
    ConsCidadesDispDATPAL: TDateTimeField;
    ConsCidadesDispHORPAL: TIntegerField;
    ConsCidadesDispNUMFEB: TIntegerField;
    ConsCidadesDispUSU_GENTILICO: TStringField;
    ConsCidadesDispUSU_POPULACAO: TIntegerField;
    ConsCidadesDispUSU_PIB: TBCDField;
    ConsCidadesDispUSU_AREAT: TIntegerField;
    ConsCidadesDispUSU_CODREP: TIntegerField;
    ConsCidadesDispIMGLGT: TStringField;
    ProviderConsCidadesDisp: TDataSetProvider;
    ClientConsCidadesDisp: TClientDataSet;
    ClientConsCidadesDispCODRAI: TIntegerField;
    ClientConsCidadesDispNOMCID: TStringField;
    ClientConsCidadesDispSIGUFS: TStringField;
    ClientConsCidadesDispPOPCID: TIntegerField;
    ClientConsCidadesDispPOTALF: TBCDField;
    ClientConsCidadesDispLOCGEO: TStringField;
    ClientConsCidadesDispINDEXP: TIntegerField;
    ClientConsCidadesDispDATPAL: TDateTimeField;
    ClientConsCidadesDispHORPAL: TIntegerField;
    ClientConsCidadesDispNUMFEB: TIntegerField;
    ClientConsCidadesDispUSU_GENTILICO: TStringField;
    ClientConsCidadesDispUSU_POPULACAO: TIntegerField;
    ClientConsCidadesDispUSU_PIB: TBCDField;
    ClientConsCidadesDispUSU_AREAT: TIntegerField;
    ClientConsCidadesDispUSU_CODREP: TIntegerField;
    ClientConsCidadesDispIMGLGT: TStringField;
    dsClientConsCidadesDisp: TDataSource;
    ConsCidadesRep: TADOQuery;
    ConsCidadesRepCODRAI: TIntegerField;
    ConsCidadesRepNOMCID: TStringField;
    ConsCidadesRepSIGUFS: TStringField;
    ConsCidadesRepPOPCID: TIntegerField;
    ConsCidadesRepPOTALF: TBCDField;
    ConsCidadesRepLOCGEO: TStringField;
    ConsCidadesRepINDEXP: TIntegerField;
    ConsCidadesRepDATPAL: TDateTimeField;
    ConsCidadesRepHORPAL: TIntegerField;
    ConsCidadesRepNUMFEB: TIntegerField;
    ConsCidadesRepUSU_GENTILICO: TStringField;
    ConsCidadesRepUSU_POPULACAO: TIntegerField;
    ConsCidadesRepUSU_PIB: TBCDField;
    ConsCidadesRepUSU_AREAT: TIntegerField;
    ConsCidadesRepUSU_CODREP: TIntegerField;
    ConsCidadesRepIMGLGT: TStringField;
    ProviderConsCidadesRep: TDataSetProvider;
    ClientConsCidadesRep: TClientDataSet;
    ClientConsCidadesRepCODRAI: TIntegerField;
    ClientConsCidadesRepNOMCID: TStringField;
    ClientConsCidadesRepSIGUFS: TStringField;
    ClientConsCidadesRepPOPCID: TIntegerField;
    ClientConsCidadesRepPOTALF: TBCDField;
    ClientConsCidadesRepLOCGEO: TStringField;
    ClientConsCidadesRepINDEXP: TIntegerField;
    ClientConsCidadesRepDATPAL: TDateTimeField;
    ClientConsCidadesRepHORPAL: TIntegerField;
    ClientConsCidadesRepNUMFEB: TIntegerField;
    ClientConsCidadesRepUSU_GENTILICO: TStringField;
    ClientConsCidadesRepUSU_POPULACAO: TIntegerField;
    ClientConsCidadesRepUSU_PIB: TBCDField;
    ClientConsCidadesRepUSU_AREAT: TIntegerField;
    ClientConsCidadesRepUSU_CODREP: TIntegerField;
    ClientConsCidadesRepIMGLGT: TStringField;
    dsClientConsCidadesRep: TDataSource;
    ClientConsCidadesRepTQtdCid: TAggregateField;
    dbedtTQtdCid: TDBEdit;
    ClientConsCidadesDispTQtdCid: TAggregateField;
    dbedtTQtdCidDisp: TDBEdit;
    procedure edtCodRepExit(Sender: TObject);
    procedure btnConsRepClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCidDisponivelChange(Sender: TObject);
    procedure cbbUfDisponivelChange(Sender: TObject);
    procedure edtCidRepChange(Sender: TObject);
    procedure cbbUfRepChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRepresentante_Cidades: TfrmCadRepresentante_Cidades;

implementation

uses UDmOra, UConsGeralNfEnt;

{$R *.dfm}

procedure TfrmCadRepresentante_Cidades.btn1Click(Sender: TObject);
begin
  if not ClientConsCidadesDisp.IsEmpty then
     begin
       DmOra.CadE008Rai.Close;
       DmOra.CadE008Rai.Parameters.ParamByName('CODRAI').Value := ClientConsCidadesDispCODRAI.Value;
       DmOra.CadE008Rai.Open;
       if not DmOra.CadE008Rai.IsEmpty then
          begin
            DmOra.CadE008Rai.Edit;
            DmOra.CadE008RaiUSU_CODREP.Value := edtCodRep.AsInteger;
            DmOra.CadE008Rai.Post;

            ConsCidadesDisp.Close;
            ConsCidadesDisp.Open;
            ClientConsCidadesDisp.Refresh;

            ConsCidadesRep.Close;
            ConsCidadesRep.Open;
            ClientConsCidadesRep.Refresh;
          end;
     end;
end;

procedure TfrmCadRepresentante_Cidades.btn2Click(Sender: TObject);
begin
if not ClientConsCidadesRep.IsEmpty then
     begin
       DmOra.CadE008Rai.Close;
       DmOra.CadE008Rai.Parameters.ParamByName('CODRAI').Value := ClientConsCidadesRepCODRAI.Value;
       DmOra.CadE008Rai.Open;
       if not DmOra.CadE008Rai.IsEmpty then
          begin
            DmOra.CadE008Rai.Edit;
            DmOra.CadE008RaiUSU_CODREP.Value := 0;
            DmOra.CadE008Rai.Post;

            ConsCidadesDisp.Close;
            ConsCidadesDisp.Open;
            ClientConsCidadesDisp.Refresh;

            ConsCidadesRep.Close;
            ConsCidadesRep.Open;
            ClientConsCidadesRep.Refresh;
          end;
     end;
end;

procedure TfrmCadRepresentante_Cidades.btnConsRepClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codrep,nomrep,aperep,cgccpf from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'frmCadRepresentante_Cidades';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodRep;
end;

procedure TfrmCadRepresentante_Cidades.btnLimparClick(Sender: TObject);
begin
  if edtCodRep.Value <> 0 then
     begin
       if Application.MessageBox('Remover todas as cidades deste representante?','Atenção',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
          begin

             DmOra.ConsSql.Close;
             DmOra.ConsSql.SQL.Clear;
             DmOra.conssql.SQL.Add('update e008rai');
             DmOra.conssql.SQL.Add('  set usu_codrep = :novo_codrep');
             DmOra.conssql.SQL.Add('  where usu_codrep = :usu_codrep');
             DmOra.conssql.Parameters.ParamByName('novo_codrep').Value := 0;
             DmOra.conssql.Parameters.ParamByName('usu_codrep').Value := edtCodRep.AsInteger;
             DmOra.conssql.ExecSQL;

              ConsCidadesDisp.Close;
              ConsCidadesDisp.Open;
              ClientConsCidadesDisp.Refresh;

              ConsCidadesRep.Close;
              ConsCidadesRep.Open;
              ClientConsCidadesRep.Refresh;
          end;
     end;

end;

procedure TfrmCadRepresentante_Cidades.cbbUfDisponivelChange(Sender: TObject);
begin
edtCidDisponivelChange(Sender);
end;

procedure TfrmCadRepresentante_Cidades.cbbUfRepChange(Sender: TObject);
begin
  edtCidRepChange(Sender);
end;

procedure TfrmCadRepresentante_Cidades.edtCidDisponivelChange(Sender: TObject);
begin
  ClientConsCidadesDisp.Close;
  ConsCidadesDisp.Close;
  ConsCidadesDisp.SQL.Clear;
  ConsCidadesDisp.SQL.Add('select e008rai.* from e008rai');
  ConsCidadesDisp.SQL.Add(' where ');
  ConsCidadesDisp.SQL.Add(' e008rai.usu_codrep <> :usu_codrep');

  if Trim(edtCidDisponivel.Text) <> '' then
     begin
       ConsCidadesDisp.SQL.Add(' and UPPER(e008rai.nomcid) like '+QuotedStr('%'+UpperCase(edtCidDisponivel.Text)+'%'));
     end;

  if (Trim(cbbUfDisponivel.Text) <> '') and (Trim(cbbUfDisponivel.Text) <> '..') then
     begin
       ConsCidadesDisp.SQL.Add(' and e008rai.sigufs = '+QuotedStr(cbbUfDisponivel.Text));
     end;

  ConsCidadesDisp.SQL.Add('order by e008rai.nomcid');
  ConsCidadesDisp.Parameters.ParamByName('usu_codrep').Value := edtCodRep.AsInteger;
  ConsCidadesDisp.Open;
  ClientConsCidadesDisp.Open


end;

procedure TfrmCadRepresentante_Cidades.edtCidRepChange(Sender: TObject);
begin
  ClientConsCidadesRep.Close;
  ConsCidadesRep.Close;
  ConsCidadesRep.SQL.Clear;
  ConsCidadesRep.SQL.Add('select e008rai.* from e008rai');
  ConsCidadesRep.SQL.Add(' where ');
  ConsCidadesRep.SQL.Add(' e008rai.usu_codrep = :usu_codrep');

  if Trim(edtCidRep.Text) <> '' then
     begin
       ConsCidadesRep.SQL.Add(' and UPPER(e008rai.nomcid) like '+QuotedStr('%'+UpperCase(edtCidRep.Text)+'%'));
     end;

  if (Trim(cbbUfRep.Text) <> '') and (Trim(cbbUfRep.Text) <> '..') then
     begin
       ConsCidadesRep.SQL.Add(' and e008rai.sigufs = '+QuotedStr(cbbUfRep.Text));
     end;

  ConsCidadesRep.SQL.Add('order by e008rai.nomcid');
  ConsCidadesRep.Parameters.ParamByName('usu_codrep').Value := edtCodRep.AsInteger;
  ConsCidadesRep.Open;
  ClientConsCidadesRep.Open
end;

procedure TfrmCadRepresentante_Cidades.edtCodRepExit(Sender: TObject);
begin
  if edtCodRep.Value > 0 then
     begin
        DmOra.ConsSql.Close;
        DmOra.ConsSql.SQL.Clear;
        DmOra.ConsSql.SQL.Add('select codrep,nomrep,aperep,cgccpf from e090rep');
        DmOra.ConsSql.SQL.Add(' where codrep = :codrep');
        DmOra.ConsSql.Parameters.ParamByName('codrep').Value := edtCodRep.AsInteger;
        DmOra.ConsSql.Open;
        if DmOra.ConsSql.IsEmpty then
           begin
             ClientConsCidadesDisp.Close;
             ConsCidadesDisp.Close;

             ClientConsCidadesRep.Close;
             ConsCidadesRep.Close;

             Application.MessageBox('Representante não encontrado','Aviso',MB_ICONWARNING+MB_OK);
             edtDesRep.Clear;
             ActiveControl := edtCodRep;
             Abort;
           end
        else
           begin
             edtDesRep.Text := DmOra.ConsSql.FieldByName('aperep').AsString;

             edtCidDisponivelChange(Sender);
             edtCidRepChange(Sender);
           end;

     end
  else
     begin
       edtDesRep.Clear;

       ClientConsCidadesDisp.Close;
       ConsCidadesDisp.Close;

       ClientConsCidadesRep.Close;
       ConsCidadesRep.Close;
     end;
end;

procedure TfrmCadRepresentante_Cidades.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
