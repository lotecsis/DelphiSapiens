unit UAjustaConsumoMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit,
  ComCtrls, DBCtrls;

type
  TFAjustaConsumoMateriaPrima = class(TForm)
    pgcPaginaControle: TPageControl;
    tsComAjuste: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbg1: TDBGrid;
    edtDesPro: TEdit;
    edtCodPro: TEdit;
    btnConsProduto: TBitBtn;
    edtDesPro1: TEdit;
    edtPerInf: TCurrencyEdit;
    btnAplicar: TBitBtn;
    dsConsUSU_T700Inf: TDataSource;
    tsSemAjuste: TTabSheet;
    dbg2: TDBGrid;
    dsConsE700CtmSemAju: TDataSource;
    btnProcessarSemAju: TBitBtn;
    tsComponentes: TTabSheet;
    dbg3: TDBGrid;
    dsConsE700CtmAju: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtComponentesModelo: TEdit;
    edtComponentesMateriaPrima: TEdit;
    edtComponentesDerivacao: TEdit;
    btnTSComponentesEditar: TBitBtn;
    dsCadUSU_T700Ctm: TDataSource;
    Label7: TLabel;
    dbedtUSU_QTDUTI: TDBEdit;
    Label8: TLabel;
    dbedtUSU_QTDINF: TDBEdit;
    Label9: TLabel;
    dbedtUSU_PERINF: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtTSComponentes_Modelo: TEdit;
    edtTSComponentes_Componente: TEdit;
    procedure edtDesProChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsProdutoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProExit(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure btnProcessarSemAjuClick(Sender: TObject);
    procedure edtComponentesModeloChange(Sender: TObject);
    procedure edtComponentesMateriaPrimaChange(Sender: TObject);
    procedure edtComponentesDerivacaoChange(Sender: TObject);
    procedure btnTSComponentesEditarClick(Sender: TObject);
    procedure dsCadUSU_T700CtmStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tsSemAjusteShow(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAjustaConsumoMateriaPrima: TFAjustaConsumoMateriaPrima;

implementation

uses UDmOra, UConsGeralNfEnt;

{$R *.dfm}

procedure TFAjustaConsumoMateriaPrima.btnTSComponentesEditarClick(Sender: TObject);
begin
if not DmOra.ConsE700CtmAju.IsEmpty then
   begin
      if not (DmOra.CadUSU_T700Ctm.State in [dsInsert,dsEdit]) then
         begin
            DmOra.CadUSU_T700Ctm.Close;
            DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE700CtmAjuCODEMP.Value;
            DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODMOD').Value := DmOra.ConsE700CtmAjuCODMOD.Value;
            DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODETG').Value := DmOra.ConsE700CtmAjuCODETG.Value;
            DmOra.CadUSU_T700Ctm.Parameters.ParamByName('SEQMOD').Value := DmOra.ConsE700CtmAjuSEQMOD.Value;
            DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODDER').Value := DmOra.ConsE700CtmAjuCODDER.Value;
            DmOra.CadUSU_T700Ctm.Open;
            if not DmOra.CadUSU_T700Ctm.IsEmpty then
               begin
                  edtTSComponentes_Modelo.Text := DmOra.ConsE700CtmAjuCODMOD.AsString + ' - '+DmOra.ConsE700CtmAjuDESMOD.AsString;
                  edtTSComponentes_Componente.Text := DmOra.ConsE700CtmAjuCODCMP.AsString + ' - '+DmOra.ConsE700CtmAjuDESPRO.AsString;
                  DmOra.CadUSU_T700Ctm.Edit;
               end
            else
               begin
                  edtTSComponentes_Modelo.Clear;
                  edtTSComponentes_Componente.Clear;
                  Application.MessageBox('Não foi encontrado ajuste para este Componente/Matéria Prima, a alteração do consumo deve ser feito no Sapiens','Aviso',MB_ICONWARNING+MB_OK);
               end;
         end
      else
      if DmOra.CadUSU_T700Ctm.State in [dsInsert,dsEdit] then
         begin
           if DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat = 0 then
              begin
                Application.MessageBox('Informe a quantidade de consumo','Aviso',MB_ICONWARNING+MB_OK);
                ActiveControl := dbedtUSU_QTDUTI;
                Abort;
              end;


           DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat + (DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat * (DmOra.CadUSU_T700CtmUSU_PERINF.AsFloat / 100));
           DmOra.CadUSU_T700Ctm.Post;

            DmOra.CadE700Ctm.Close;
            DmOra.CadE700Ctm.Parameters.ParamByName('CODEMP').Value := DmOra.CadUSU_T700CtmUSU_CODEMP.Value;
            DmOra.CadE700Ctm.Parameters.ParamByName('CODMOD').Value := DmOra.CadUSU_T700CtmUSU_CODMOD.Value;
            DmOra.CadE700Ctm.Parameters.ParamByName('CODETG').Value := DmOra.CadUSU_T700CtmUSU_CODETG.Value;
            DmOra.CadE700Ctm.Parameters.ParamByName('SEQMOD').Value := DmOra.CadUSU_T700CtmUSU_SEQMOD.Value;
            DmOra.CadE700Ctm.Parameters.ParamByName('CODDER').Value := DmOra.CadUSU_T700CtmUSU_CODDER.Value;
            DmOra.CadE700Ctm.Open;
            if not DmOra.CadE700Ctm.IsEmpty then
               begin
                 DmOra.CadE700Ctm.Edit;
                 DmOra.CadE700CtmQTDUTI.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat;
                 DmOra.CadE700Ctm.Post;
               end;

           if trim(edtComponentesModelo.Text) <> '' then
              begin
                edtComponentesModeloChange(Sender);
              end;

           if trim(edtComponentesMateriaPrima.Text) <> '' then
              begin
                edtComponentesMateriaPrimaChange(Sender);
              end;

           if trim(edtComponentesDerivacao.Text) <> '' then
              begin
                edtComponentesDerivacaoChange(Sender);
              end;

           DmOra.CadUSU_T700Ctm.Close;
           edtTSComponentes_Modelo.Clear;
           edtTSComponentes_Componente.Clear;

         end;

      ActiveControl := nil;
   end;

end;

procedure TFAjustaConsumoMateriaPrima.dbg1DblClick(Sender: TObject);
begin
  if not DmOra.ConsUSU_T700Inf.IsEmpty then
     begin
       edtCodPro.Text := DmOra.ConsUSU_T700InfUSU_CODPRO.AsString;
       edtCodProExit(Sender);
       ActiveControl := edtCodPro;
     end;

end;

procedure TFAjustaConsumoMateriaPrima.dsCadUSU_T700CtmStateChange(
  Sender: TObject);
begin
if DmOra.CadUSU_T700Ctm.State in [dsInsert,dsEdit] then
   begin
     btnTSComponentesEditar.Caption := 'Confirmar';
     Application.ProcessMessages;
   end
else
   begin
     btnTSComponentesEditar.Caption := 'Editar';
     Application.ProcessMessages;
   end;
end;

procedure TFAjustaConsumoMateriaPrima.btnAplicarClick(Sender: TObject);
begin
if Trim(edtCodPro.Text) <> '' then
   begin
      if Application.MessageBox('Confirmar Ajuste?','CONFIRMAÇÃO',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
         begin
            Screen.Cursor := crHourGlass;
            //primeiro consuta pra ver se ja existe o item
            DmOra.CadUSU_T700INF.Close;
            DmOra.CadUSU_T700INF.Parameters.ParamByName('CODEMP').Value := 1;
            DmOra.CadUSU_T700INF.Parameters.ParamByName('CODPRO').Value := edtCodPro.Text;
            DmOra.CadUSU_T700INF.Open;
            if DmOra.CadUSU_T700INF.IsEmpty then
               begin
                 DmOra.CadUSU_T700INF.Insert;
                 DmOra.CadUSU_T700INFUSU_CODEMP.Value := 1;
                 DmOra.CadUSU_T700INFUSU_CODPRO.AsString := edtCodPro.Text;
                 DmOra.CadUSU_T700INFUSU_PERINF.AsFloat := edtPerInf.Value;
                 DmOra.CadUSU_T700INF.Post;
               end
            else
               begin
                 DmOra.CadUSU_T700INF.Edit;
                 DmOra.CadUSU_T700INFUSU_PERINF.AsFloat := edtPerInf.Value;
                 DmOra.CadUSU_T700INF.Post;
               end;

            //CONSULTA TODOS OS COMPONENTES QUE USAM ESSA MATERIA PRIMA
            DmOra.ConsE700Ctm.Close;
            DmOra.ConsE700Ctm.SQL.Clear;
            DmOra.ConsE700Ctm.SQL.Add('SELECT E700CTM.*');
            DmOra.ConsE700Ctm.SQL.Add('  FROM E700CTM');
            DmOra.ConsE700Ctm.SQL.Add('  WHERE');
            DmOra.ConsE700Ctm.SQL.Add('    E700CTM.CODEMP = :CODEMP AND');
            DmOra.ConsE700Ctm.SQL.Add('    E700CTM.CODCMP = :CODCMP');
            DmOra.ConsE700Ctm.Parameters.ParamByName('CODEMP').Value := 1;
            DmOra.ConsE700Ctm.Parameters.ParamByName('CODCMP').Value := edtCodPro.Text;
            DmOra.ConsE700Ctm.Open;
            DmOra.ConsE700Ctm.First;
            while not DmOra.ConsE700Ctm.Eof do
              begin
                 //CONSULTA SE EXISTE AJUSTE PARA O COMPENENTE/MATERIA PRIMA
                  DmOra.CadUSU_T700Ctm.Close;
                  DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE700CtmCODEMP.Value;
                  DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODMOD').Value := DmOra.ConsE700CtmCODMOD.Value;
                  DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODETG').Value := DmOra.ConsE700CtmCODETG.Value;
                  DmOra.CadUSU_T700Ctm.Parameters.ParamByName('SEQMOD').Value := DmOra.ConsE700CtmSEQMOD.Value;
                  DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODDER').Value := DmOra.ConsE700CtmCODDER.Value;
                  DmOra.CadUSU_T700Ctm.Open;
                  if DmOra.CadUSU_T700Ctm.IsEmpty then
                     begin
                       DmOra.CadUSU_T700Ctm.Insert;
                       DmOra.CadUSU_T700CtmUSU_CODEMP.Value := DmOra.ConsE700CtmCODEMP.Value;
                       DmOra.CadUSU_T700CtmUSU_CODMOD.Value := DmOra.ConsE700CtmCODMOD.Value;
                       DmOra.CadUSU_T700CtmUSU_CODETG.Value := DmOra.ConsE700CtmCODETG.Value;
                       DmOra.CadUSU_T700CtmUSU_SEQMOD.Value := DmOra.ConsE700CtmSEQMOD.Value;
                       DmOra.CadUSU_T700CtmUSU_CODDER.Value := DmOra.ConsE700CtmCODDER.Value;

                       DmOra.CadUSU_T700CtmUSU_CODCMP.Value := DmOra.ConsE700CtmCODCMP.Value;
                       DmOra.CadUSU_T700CtmUSU_DERCMP.Value := DmOra.ConsE700CtmDERCMP.Value;
                       DmOra.CadUSU_T700CtmUSU_QTDUTI.Value := DmOra.ConsE700CtmQTDUTI.Value;
                       DmOra.CadUSU_T700CtmUSU_QTDFRQ.Value := DmOra.ConsE700CtmQTDFRQ.Value;
                       DmOra.CadUSU_T700CtmUSU_PERPRD.Value := DmOra.ConsE700CtmPERPRD.Value;
                       DmOra.CadUSU_T700CtmUSU_PRDQTD.Value := DmOra.ConsE700CtmPRDQTD.Value;
                       DmOra.CadUSU_T700CtmUSU_UNIME2.Value := DmOra.ConsE700CtmUNIME2.Value;
                       DmOra.CadUSU_T700CtmUSU_DATALT.Value := Date;
                       DmOra.CadUSU_T700CtmUSU_CODVAC.Value := DmOra.ConsE700CtmCODVAC.Value;
                       DmOra.CadUSU_T700CtmUSU_PERINF.AsFloat := edtPerInf.Value;
                       DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat := DmOra.ConsE700CtmQTDUTI.AsFloat + (DmOra.ConsE700CtmQTDUTI.AsFloat * (edtPerInf.Value/100));
                       DmOra.CadUSU_T700Ctm.Post;
                     end
                  else
                     begin
                       DmOra.CadUSU_T700Ctm.Edit;
                       DmOra.CadUSU_T700CtmUSU_CODCMP.Value := DmOra.ConsE700CtmCODCMP.Value;
                       DmOra.CadUSU_T700CtmUSU_DERCMP.Value := DmOra.ConsE700CtmDERCMP.Value;
                       //DmOra.CadUSU_T700CtmUSU_QTDUTI.Value := DmOra.ConsE700CtmQTDUTI.Value;
                       DmOra.CadUSU_T700CtmUSU_QTDFRQ.Value := DmOra.ConsE700CtmQTDFRQ.Value;
                       DmOra.CadUSU_T700CtmUSU_PERPRD.Value := DmOra.ConsE700CtmPERPRD.Value;
                       DmOra.CadUSU_T700CtmUSU_PRDQTD.Value := DmOra.ConsE700CtmPRDQTD.Value;
                       DmOra.CadUSU_T700CtmUSU_UNIME2.Value := DmOra.ConsE700CtmUNIME2.Value;
                       DmOra.CadUSU_T700CtmUSU_DATALT.Value := Date;
                       DmOra.CadUSU_T700CtmUSU_CODVAC.Value := DmOra.ConsE700CtmCODVAC.Value;
                       DmOra.CadUSU_T700CtmUSU_PERINF.AsFloat := edtPerInf.Value;
                       DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat + (DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat * (edtPerInf.Value/100));
                       DmOra.CadUSU_T700Ctm.Post;
                     end;

                      //APLICA O AJUSTE NA TABELA E700TCM
                      DmOra.CadE700Ctm.Close;
                      DmOra.CadE700Ctm.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE700CtmCODEMP.Value;
                      DmOra.CadE700Ctm.Parameters.ParamByName('CODMOD').Value := DmOra.ConsE700CtmCODMOD.Value;
                      DmOra.CadE700Ctm.Parameters.ParamByName('CODETG').Value := DmOra.ConsE700CtmCODETG.Value;
                      DmOra.CadE700Ctm.Parameters.ParamByName('SEQMOD').Value := DmOra.ConsE700CtmSEQMOD.Value;
                      DmOra.CadE700Ctm.Parameters.ParamByName('CODDER').Value := DmOra.ConsE700CtmCODDER.Value;
                      DmOra.CadE700Ctm.Open;
                      if not DmOra.CadE700Ctm.IsEmpty then
                         begin
                           DmOra.CadE700Ctm.Edit;
                           DmOra.CadE700CtmQTDUTI.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat;
                           DmOra.CadE700Ctm.Post;
                         end;

                DmOra.ConsE700Ctm.Next;
              end;

            edtDesProChange(Sender);
            edtCodPro.Clear;
            edtDesPro1.Clear;
            edtPerInf.Value := 0;
            Screen.Cursor := crDefault;
            ActiveControl := nil;
         end;
   end;
end;

procedure TFAjustaConsumoMateriaPrima.btnConsProdutoClick(Sender: TObject);
begin
  FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
  FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
  FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
  FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori not in (00,01)';
  FConsGeralNfEnt.vbWhere := true;
  FConsGeralNfEnt.vaCampo := 'CodPro';
  FConsGeralNfEnt.vnColuna := 1;
  FConsGeralNfEnt.vaTela := 'FAjustaConsumoMateriaPrima';
  FConsGeralNfEnt.ShowModal;
  FreeAndNil(FConsGeralNfEnt);
  ActiveControl := edtCodPro;
end;

procedure TFAjustaConsumoMateriaPrima.btnProcessarSemAjuClick(Sender: TObject);
begin
  DmOra.ConsE700CtmSemAju.First;
  while not DmOra.ConsE700CtmSemAju.Eof do
    begin
      //APLICA O AJUSTE NA TABELA E700TCM
      DmOra.CadE700Ctm.Close;
      DmOra.CadE700Ctm.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE700CtmSemAjuCODEMP.Value;
      DmOra.CadE700Ctm.Parameters.ParamByName('CODMOD').Value := DmOra.ConsE700CtmSemAjuCODMOD.Value;
      DmOra.CadE700Ctm.Parameters.ParamByName('CODETG').Value := DmOra.ConsE700CtmSemAjuCODETG.Value;
      DmOra.CadE700Ctm.Parameters.ParamByName('SEQMOD').Value := DmOra.ConsE700CtmSemAjuSEQMOD.Value;
      DmOra.CadE700Ctm.Parameters.ParamByName('CODDER').Value := DmOra.ConsE700CtmSemAjuCODDER.Value;
      DmOra.CadE700Ctm.Open;
      if not DmOra.CadE700Ctm.IsEmpty then
         begin
              DmOra.CadE700Ctm.Edit;

             //CONSULTA SE EXISTE AJUSTE PARA ESTA MATERIA PRIMA
              DmOra.CadUSU_T700INF.Close;
              DmOra.CadUSU_T700INF.Parameters.ParamByName('CODEMP').Value := 1;
              DmOra.CadUSU_T700INF.Parameters.ParamByName('CODPRO').Value := DmOra.ConsE700CtmSemAjuCODCMP.AsString;
              DmOra.CadUSU_T700INF.Open;
              if not DmOra.CadUSU_T700INF.IsEmpty then //se achou o ajuste
                 begin
                    //CONSULTA SE EXISTE AJUSTE PARA O COMPENENTE/MATERIA PRIMA
                    DmOra.CadUSU_T700Ctm.Close;
                    DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODEMP').Value := DmOra.ConsE700CtmSemAjuCODEMP.Value;
                    DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODMOD').Value := DmOra.ConsE700CtmSemAjuCODMOD.Value;
                    DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODETG').Value := DmOra.ConsE700CtmSemAjuCODETG.Value;
                    DmOra.CadUSU_T700Ctm.Parameters.ParamByName('SEQMOD').Value := DmOra.ConsE700CtmSemAjuSEQMOD.Value;
                    DmOra.CadUSU_T700Ctm.Parameters.ParamByName('CODDER').Value := DmOra.ConsE700CtmSemAjuCODDER.Value;
                    DmOra.CadUSU_T700Ctm.Open;
                    if DmOra.CadUSU_T700Ctm.IsEmpty then
                       begin
                         DmOra.CadUSU_T700Ctm.Insert;
                         DmOra.CadUSU_T700CtmUSU_CODEMP.Value := DmOra.ConsE700CtmSemAjuCODEMP.Value;
                         DmOra.CadUSU_T700CtmUSU_CODMOD.Value := DmOra.ConsE700CtmSemAjuCODMOD.Value;
                         DmOra.CadUSU_T700CtmUSU_CODETG.Value := DmOra.ConsE700CtmSemAjuCODETG.Value;
                         DmOra.CadUSU_T700CtmUSU_SEQMOD.Value := DmOra.ConsE700CtmSemAjuSEQMOD.Value;
                         DmOra.CadUSU_T700CtmUSU_CODDER.Value := DmOra.ConsE700CtmSemAjuCODDER.Value;

                         DmOra.CadUSU_T700CtmUSU_CODCMP.Value := DmOra.ConsE700CtmSemAjuCODCMP.Value;
                         DmOra.CadUSU_T700CtmUSU_DERCMP.Value := DmOra.ConsE700CtmSemAjuDERCMP.Value;
                         DmOra.CadUSU_T700CtmUSU_QTDUTI.Value := DmOra.ConsE700CtmSemAjuQTDUTI.Value;
                         DmOra.CadUSU_T700CtmUSU_QTDFRQ.Value := DmOra.ConsE700CtmSemAjuQTDFRQ.Value;
                         DmOra.CadUSU_T700CtmUSU_PERPRD.Value := DmOra.ConsE700CtmSemAjuPERPRD.Value;
                         DmOra.CadUSU_T700CtmUSU_PRDQTD.Value := DmOra.ConsE700CtmSemAjuPRDQTD.Value;
                         DmOra.CadUSU_T700CtmUSU_UNIME2.Value := DmOra.ConsE700CtmSemAjuUNIME2.Value;
                         DmOra.CadUSU_T700CtmUSU_DATALT.Value := Date;
                         DmOra.CadUSU_T700CtmUSU_CODVAC.Value := DmOra.ConsE700CtmSemAjuCODVAC.Value;
                         DmOra.CadUSU_T700CtmUSU_PERINF.AsFloat := DmOra.CadUSU_T700INFUSU_PERINF.AsFloat;
                         DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat + (DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat * (DmOra.CadUSU_T700INFUSU_PERINF.AsFloat/100));
                         DmOra.CadUSU_T700Ctm.Post;
                       end
                    else
                       begin
                         DmOra.CadUSU_T700Ctm.Edit;
                         DmOra.CadUSU_T700CtmUSU_CODCMP.Value := DmOra.ConsE700CtmSemAjuCODCMP.Value;
                         DmOra.CadUSU_T700CtmUSU_DERCMP.Value := DmOra.ConsE700CtmSemAjuDERCMP.Value;
                         //DmOra.CadUSU_T700CtmUSU_QTDUTI.Value := DmOra.ConsE700CtmQTDUTI.Value;
                         DmOra.CadUSU_T700CtmUSU_QTDFRQ.Value := DmOra.ConsE700CtmSemAjuQTDFRQ.Value;
                         DmOra.CadUSU_T700CtmUSU_PERPRD.Value := DmOra.ConsE700CtmSemAjuPERPRD.Value;
                         DmOra.CadUSU_T700CtmUSU_PRDQTD.Value := DmOra.ConsE700CtmSemAjuPRDQTD.Value;
                         DmOra.CadUSU_T700CtmUSU_UNIME2.Value := DmOra.ConsE700CtmSemAjuUNIME2.Value;
                         DmOra.CadUSU_T700CtmUSU_DATALT.Value := Date;
                         DmOra.CadUSU_T700CtmUSU_CODVAC.Value := DmOra.ConsE700CtmSemAjuCODVAC.Value;
                         DmOra.CadUSU_T700CtmUSU_PERINF.AsFloat := DmOra.CadUSU_T700INFUSU_PERINF.AsFloat;
                         DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat + (DmOra.CadUSU_T700CtmUSU_QTDUTI.AsFloat * (DmOra.CadUSU_T700INFUSU_PERINF.AsFloat/100));
                         DmOra.CadUSU_T700Ctm.Post;
                       end;

                    DmOra.CadE700CtmQTDUTI.AsFloat := DmOra.CadUSU_T700CtmUSU_QTDINF.AsFloat;
                 end;
           //falata setar o inaju
           DmOra.CadE700CtmUSU_INAJU.Value := 'S';
           DmOra.CadE700Ctm.Post;
         end;
      DmOra.ConsE700CtmSemAju.Next;
    end;

  DmOra.ConsE700CtmSemAju.Close;
  DmOra.ConsE700CtmSemAju.Open;
end;

procedure TFAjustaConsumoMateriaPrima.edtCodProExit(Sender: TObject);
begin
  if Trim(edtCodPro.Text) <> '' then
     begin
       DmOra.ConsSql.Close;
       DmOra.ConsSql.SQL.Clear;
       DmOra.ConsSql.SQL.Add('select e075pro.codpro,e075pro.despro');
       DmOra.ConsSql.SQL.Add('   from e075pro');
       DmOra.ConsSql.SQL.Add('   where');
       DmOra.ConsSql.SQL.Add('    e075pro.codpro = :codpro');
       DmOra.ConsSql.SQL.Add(' and codori not in (00,01)');
       DmOra.ConsSql.Parameters.ParamByName('codpro').Value := edtCodPro.Text;
       DmOra.ConsSql.Open;
       if DmOra.ConsSql.IsEmpty then
          begin
            Application.MessageBox('Produto não encontrado','Aviso',MB_ICONWARNING+MB_OK);
            edtDesPro1.Clear;
            ActiveControl := edtCodPro;
            Abort;
          end
       else
          begin
            edtDesPro1.Text := DmOra.ConsSql.FieldByName('despro').AsString;
          end;

     end
  else
     begin
       edtDesPro1.Clear;
     end;

end;

procedure TFAjustaConsumoMateriaPrima.edtComponentesDerivacaoChange(
  Sender: TObject);
begin
  DmOra.ConsE700CtmAju.Close;
  DmOra.ConsE700CtmAju.SQL.Clear;
  DmOra.ConsE700CtmAju.SQL.Add('select e700ctm.*,e075pro.despro,e075p.despro as desmod,');
  DmOra.ConsE700CtmAju.SQL.Add('       usu_t700inf.usu_perinf, usu_t700ctm.usu_qtduti');
  DmOra.ConsE700CtmAju.SQL.Add('    from e700ctm');
  DmOra.ConsE700CtmAju.SQL.Add('    inner join e075pro on e075pro.codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                          e075pro.codpro = e700ctm.codcmp');
  DmOra.ConsE700CtmAju.SQL.Add('    inner join e075pro e075p on e075p.codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                                e075p.codpro = e700ctm.codmod');
  DmOra.ConsE700CtmAju.SQL.Add('    left join usu_t700inf on usu_t700inf.usu_codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700inf.usu_codpro = e700ctm.codcmp');
  DmOra.ConsE700CtmAju.SQL.Add('    left join usu_t700ctm on usu_t700ctm.usu_codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codmod = e700ctm.codmod and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codetg = e700ctm.codetg and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_seqmod = e700ctm.seqmod and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codder = e700ctm.codder');
  DmOra.ConsE700CtmAju.SQL.Add('    where');
  DmOra.ConsE700CtmAju.SQL.Add('e700ctm.codemp <> 999');//so para deixar o where fixo
  DmOra.ConsE700CtmAju.SQL.Add(' and e075p.despro like '+QuotedStr('%'+edtComponentesModelo.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' and e075pro.despro like '+QuotedStr('%'+edtComponentesMateriaPrima.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' and e700ctm.codder like '+QuotedStr('%'+edtComponentesDerivacao.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' order by e700ctm.seqmod');
  DmOra.ConsE700CtmAju.Open;
end;

procedure TFAjustaConsumoMateriaPrima.edtComponentesMateriaPrimaChange(
  Sender: TObject);
begin
  DmOra.ConsE700CtmAju.Close;
  DmOra.ConsE700CtmAju.SQL.Clear;
  DmOra.ConsE700CtmAju.SQL.Add('select e700ctm.*,e075pro.despro,e075p.despro as desmod,');
  DmOra.ConsE700CtmAju.SQL.Add('       usu_t700inf.usu_perinf, usu_t700ctm.usu_qtduti');
  DmOra.ConsE700CtmAju.SQL.Add('    from e700ctm');
  DmOra.ConsE700CtmAju.SQL.Add('    inner join e075pro on e075pro.codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                          e075pro.codpro = e700ctm.codcmp');
  DmOra.ConsE700CtmAju.SQL.Add('    inner join e075pro e075p on e075p.codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                                e075p.codpro = e700ctm.codmod');
  DmOra.ConsE700CtmAju.SQL.Add('    left join usu_t700inf on usu_t700inf.usu_codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700inf.usu_codpro = e700ctm.codcmp');
  DmOra.ConsE700CtmAju.SQL.Add('    left join usu_t700ctm on usu_t700ctm.usu_codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codmod = e700ctm.codmod and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codetg = e700ctm.codetg and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_seqmod = e700ctm.seqmod and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codder = e700ctm.codder');
  DmOra.ConsE700CtmAju.SQL.Add('    where');
  DmOra.ConsE700CtmAju.SQL.Add('e700ctm.codemp <> 999');//so para deixar o where fixo
  DmOra.ConsE700CtmAju.SQL.Add(' and e075p.despro like '+QuotedStr('%'+edtComponentesModelo.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' and e075pro.despro like '+QuotedStr('%'+edtComponentesMateriaPrima.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' and e700ctm.codder like '+QuotedStr('%'+edtComponentesDerivacao.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' order by e700ctm.seqmod ');
  DmOra.ConsE700CtmAju.Open;
end;

procedure TFAjustaConsumoMateriaPrima.edtComponentesModeloChange(
  Sender: TObject);
begin
  DmOra.ConsE700CtmAju.Close;
  DmOra.ConsE700CtmAju.SQL.Clear;
  DmOra.ConsE700CtmAju.SQL.Add('select e700ctm.*,e075pro.despro,e075p.despro as desmod,');
  DmOra.ConsE700CtmAju.SQL.Add('       usu_t700inf.usu_perinf, usu_t700ctm.usu_qtduti');
  DmOra.ConsE700CtmAju.SQL.Add('    from e700ctm');
  DmOra.ConsE700CtmAju.SQL.Add('    inner join e075pro on e075pro.codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                          e075pro.codpro = e700ctm.codcmp');
  DmOra.ConsE700CtmAju.SQL.Add('    inner join e075pro e075p on e075p.codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                                e075p.codpro = e700ctm.codmod');
  DmOra.ConsE700CtmAju.SQL.Add('    left join usu_t700inf on usu_t700inf.usu_codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700inf.usu_codpro = e700ctm.codcmp');
  DmOra.ConsE700CtmAju.SQL.Add('    left join usu_t700ctm on usu_t700ctm.usu_codemp = e700ctm.codemp and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codmod = e700ctm.codmod and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codetg = e700ctm.codetg and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_seqmod = e700ctm.seqmod and');
  DmOra.ConsE700CtmAju.SQL.Add('                             usu_t700ctm.usu_codder = e700ctm.codder');
  DmOra.ConsE700CtmAju.SQL.Add('    where');
  DmOra.ConsE700CtmAju.SQL.Add('e700ctm.codemp <> 999');//so para deixar o where fixo
  DmOra.ConsE700CtmAju.SQL.Add(' and e075p.despro like '+QuotedStr('%'+edtComponentesModelo.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' and e075pro.despro like '+QuotedStr('%'+edtComponentesMateriaPrima.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' and e700ctm.codder like '+QuotedStr('%'+edtComponentesDerivacao.Text+'%'));
  DmOra.ConsE700CtmAju.SQL.Add(' order by e700ctm.seqmod ');
  DmOra.ConsE700CtmAju.Open;
end;

procedure TFAjustaConsumoMateriaPrima.edtDesProChange(Sender: TObject);
begin
  DmOra.ConsUSU_T700Inf.Close;
  DmOra.ConsUSU_T700Inf.SQL.Clear;
  DmOra.ConsUSU_T700Inf.SQL.Add(' select usu_t700inf.*,');
  DmOra.ConsUSU_T700Inf.SQL.Add('       e075pro.despro');
  DmOra.ConsUSU_T700Inf.SQL.Add('   from usu_t700inf');
  DmOra.ConsUSU_T700Inf.SQL.Add(' inner join e075pro on e075pro.codemp = usu_t700inf.usu_codemp and');
  DmOra.ConsUSU_T700Inf.SQL.Add('                       e075pro.codpro = usu_t700inf.usu_codpro');
  DmOra.ConsUSU_T700Inf.SQL.Add('   where');
  DmOra.ConsUSU_T700Inf.SQL.Add('    usu_t700inf.usu_codemp <> 999 '); //so para deixar o where fixo
  DmOra.ConsUSU_T700Inf.SQL.Add(' and e075pro.despro like '+QuotedStr('%'+edtDesPro.Text+'%'));
  DmOra.ConsUSU_T700Inf.SQL.Add(' order by e075pro.despro');
  DmOra.ConsUSU_T700Inf.Open;
end;

procedure TFAjustaConsumoMateriaPrima.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DmOra.CadUSU_T700Ctm.State in [dsInsert,dsEdit] then
   begin
     DmOra.CadUSU_T700Ctm.Cancel;
   end;
end;

procedure TFAjustaConsumoMateriaPrima.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFAjustaConsumoMateriaPrima.FormShow(Sender: TObject);
begin
  edtDesProChange(Sender);

  DmOra.ConsE700CtmSemAju.Close;
  DmOra.ConsE700CtmSemAju.Open;

  DmOra.CadUSU_T700Ctm.Close;
end;

procedure TFAjustaConsumoMateriaPrima.tsSemAjusteShow(Sender: TObject);
begin
  DmOra.ConsE700CtmSemAju.Close;
  DmOra.ConsE700CtmSemAju.Open;
end;

end.
