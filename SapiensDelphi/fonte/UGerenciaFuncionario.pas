unit UGerenciaFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  Mask, DBCtrls, rxToolEdit, DateUtils, rxCurrEdit;

type
  TFGerenciaFuncionario = class(TForm)
    PaginaControle: TPageControl;
    Panel1: TPanel;
    TbGeral: TTabSheet;
    TbImportacao: TTabSheet;
    DBGrid1: TDBGrid;
    BImportar: TBitBtn;
    ConsR034FunImp: TADOQuery;
    EdNumCad: TEdit;
    ConsR034FunImpUSU_NUMCAD: TIntegerField;
    ConsR034FunImpUSU_NOMFUN: TStringField;
    ConsR034FunImpUSU_APEFUN: TStringField;
    ConsR034FunImpUSU_DATADM: TDateTimeField;
    ConsR034FunImpUSU_NUMCPF: TBCDField;
    DsConsR034FunImp: TDataSource;
    DBGrid2: TDBGrid;
    ConsR034FunImpUSU_TIPCOL: TStringField;
    ConsR034FunImpUSU_CODDEP: TIntegerField;
    ConsR034FunImpUSU_SITAFA: TIntegerField;
    ConsR034FunImpUSU_DESSIT: TStringField;
    ConsR034FunImpUSU_SITDEP: TStringField;
    ConsR034DepImp: TADOQuery;
    DsConsR034DepImp: TDataSource;
    ConsR034DepImpUSU_NUMCAD: TIntegerField;
    ConsR034DepImpUSU_NOMFUN: TStringField;
    ConsR034DepImpUSU_APEFUN: TStringField;
    ConsR034DepImpUSU_DATADM: TDateTimeField;
    ConsR034DepImpUSU_NUMCPF: TBCDField;
    ConsR034DepImpUSU_TIPCOL: TStringField;
    ConsR034DepImpUSU_CODDEP: TIntegerField;
    ConsR034DepImpUSU_SITAFA: TIntegerField;
    ConsR034DepImpUSU_DESSIT: TStringField;
    ConsR034DepImpUSU_SITDEP: TStringField;
    ConsR034DepImpUSU_GRAPAR: TIntegerField;
    ConsR034DepImpUSU_DESPAR: TStringField;
    ConsUsu_TRhFun: TADOQuery;
    ConsUsu_TRhFunUSU_NUMCAD: TIntegerField;
    ConsUsu_TRhFunUSU_NOMFUN: TStringField;
    ConsUsu_TRhFunUSU_APEFUN: TStringField;
    ConsUsu_TRhFunUSU_DATADM: TDateTimeField;
    ConsUsu_TRhFunUSU_NUMCPF: TBCDField;
    ConsUsu_TRhFunUSU_TIPCOL: TStringField;
    ConsUsu_TRhFunUSU_CODDEP: TIntegerField;
    ConsUsu_TRhFunUSU_SITAFA: TIntegerField;
    ConsUsu_TRhFunUSU_DESSIT: TStringField;
    ConsUsu_TRhFunUSU_SITDEP: TStringField;
    ConsUsu_TRhFunUSU_GRAPAR: TIntegerField;
    ConsUsu_TRhFunUSU_DESPAR: TStringField;
    DsConsUsu_TRhFun: TDataSource;
    DBE_USU_APEFUN: TDBEdit;
    DBE_USU_DATADM: TDBEdit;
    DBE_USU_SITAFA: TDBEdit;
    DBE_USU_DESSIT: TDBEdit;
    DBE_USU_NOMFUN: TDBEdit;
    DBE_USU_NUMCPF: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TbConvenio: TTabSheet;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    ConsUsu_TRhFunDep: TADOQuery;
    DsConsUsu_TRhFunDep: TDataSource;
    ConsUsu_TRhFunDepUSU_NUMCAD: TIntegerField;
    ConsUsu_TRhFunDepUSU_NOMFUN: TStringField;
    ConsUsu_TRhFunDepUSU_APEFUN: TStringField;
    ConsUsu_TRhFunDepUSU_DATADM: TDateTimeField;
    ConsUsu_TRhFunDepUSU_NUMCPF: TBCDField;
    ConsUsu_TRhFunDepUSU_TIPCOL: TStringField;
    ConsUsu_TRhFunDepUSU_CODDEP: TIntegerField;
    ConsUsu_TRhFunDepUSU_SITAFA: TIntegerField;
    ConsUsu_TRhFunDepUSU_DESSIT: TStringField;
    ConsUsu_TRhFunDepUSU_SITDEP: TStringField;
    ConsUsu_TRhFunDepUSU_GRAPAR: TIntegerField;
    ConsUsu_TRhFunDepUSU_DESPAR: TStringField;
    DBGrid4: TDBGrid;
    CbMes: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    EdAno: TEdit;
    ConsSerMov: TADOQuery;
    ConsSerMovUSU_SEQSER: TIntegerField;
    ConsSerMovUSU_CODSER: TStringField;
    ConsSerMovUSU_NUMCAD: TIntegerField;
    ConsSerMovUSU_CODDEP: TIntegerField;
    ConsSerMovUSU_QTDSER: TIntegerField;
    ConsSerMovUSU_PREUNI: TBCDField;
    ConsSerMovUSU_DATSER: TDateTimeField;
    ConsSerMovUSU_MESSER: TIntegerField;
    ConsSerMovUSU_ANOSER: TIntegerField;
    ConsSerMovUSU_NOMFUN: TStringField;
    ConsSerMovUSU_OBSSER: TStringField;
    DsConsSerMov: TDataSource;
    BConsFuncionario: TSpeedButton;
    ConsSerMovUSU_INADT: TStringField;
    ConsSerMovUSU_VLRCOB: TBCDField;
    TbAdiantamentos: TTabSheet;
    PaginaControleAdiantamentos: TPageControl;
    TbEmAberto: TTabSheet;
    TbPagos: TTabSheet;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid8: TDBGrid;
    BLancarTitulo: TBitBtn;
    ConsAdtAberto: TADOQuery;
    ConsAdtAbertoUSU_NUMCAD: TIntegerField;
    ConsAdtAbertoUSU_NUMADT: TIntegerField;
    ConsAdtAbertoUSU_DATADT: TDateTimeField;
    ConsAdtAbertoUSU_VLRADT: TBCDField;
    ConsAdtAbertoUSU_VLRPAR: TBCDField;
    ConsAdtAbertoUSU_VLRPGT: TBCDField;
    ConsAdtAbertoUSU_VLRABE: TBCDField;
    ConsAdtAbertoUSU_DATVCT: TDateTimeField;
    ConsAdtAbertoUSU_SITADT: TStringField;
    ConsAdtAbertoUSU_DSCFLA: TStringField;
    ConsAdtAbertoUSU_DATMOV: TDateTimeField;
    ConsAdtAbertoUSU_SEQMOV: TIntegerField;
    ConsAdtAbertoUSU_SEQADT: TIntegerField;
    DsConsAdtAberto: TDataSource;
    ConsAdtAbertoQTDDIA: TIntegerField;
    ConsAdtPago: TADOQuery;
    ConsAdtPagoUSU_NUMCAD: TIntegerField;
    ConsAdtPagoUSU_NUMADT: TIntegerField;
    ConsAdtPagoUSU_DATADT: TDateTimeField;
    ConsAdtPagoUSU_VLRADT: TBCDField;
    ConsAdtPagoUSU_VLRPAR: TBCDField;
    ConsAdtPagoUSU_VLRPGT: TBCDField;
    ConsAdtPagoUSU_VLRABE: TBCDField;
    ConsAdtPagoUSU_DATVCT: TDateTimeField;
    ConsAdtPagoUSU_SITADT: TStringField;
    ConsAdtPagoUSU_DSCFLA: TStringField;
    ConsAdtPagoUSU_DATMOV: TDateTimeField;
    ConsAdtPagoUSU_SEQMOV: TIntegerField;
    ConsAdtPagoUSU_SEQADT: TIntegerField;
    DBGrid7: TDBGrid;
    DsConsAdtPago: TDataSource;
    BReceberAdt: TBitBtn;
    ConsAdtAbertoUSU_VLRDSC: TBCDField;
    ConsAdtPagoUSU_VLRDSC: TBCDField;
    ConsAdtPgtAberto: TADOQuery;
    ConsAdtPgtAbertoUSU_NUMCAD: TIntegerField;
    ConsAdtPgtAbertoUSU_NUMADT: TIntegerField;
    ConsAdtPgtAbertoUSU_SEQADT: TIntegerField;
    ConsAdtPgtAbertoUSU_DATPGT: TDateTimeField;
    ConsAdtPgtAbertoUSU_VLRPGT: TBCDField;
    ConsAdtPgtAbertoUSU_CODUSU: TIntegerField;
    ConsAdtPgtAbertoUSU_SEQPGT: TIntegerField;
    DsConsAdtPgtAberto: TDataSource;
    ConsAdtPgtPago: TADOQuery;
    ConsAdtPgtPagoUSU_NUMCAD: TIntegerField;
    ConsAdtPgtPagoUSU_NUMADT: TIntegerField;
    ConsAdtPgtPagoUSU_SEQADT: TIntegerField;
    ConsAdtPgtPagoUSU_DATPGT: TDateTimeField;
    ConsAdtPgtPagoUSU_VLRPGT: TBCDField;
    ConsAdtPgtPagoUSU_CODUSU: TIntegerField;
    ConsAdtPgtPagoUSU_SEQPGT: TIntegerField;
    DsConsAdtPgtPago: TDataSource;
    BExtornarBaixaAberto: TBitBtn;
    BExtornarBaixaPago: TBitBtn;
    BImprimirDuplicata: TBitBtn;
    BGerarAdiantamento: TBitBtn;
    EdTotAberto: TCurrencyEdit;
    Label8: TLabel;
    ConsSerMovUSU_ADTGER: TStringField;
    ConsSerMovUSU_DATGADT: TDateTimeField;
    DBC_USU_MERSEX: TDBComboBox;
    ConsUsu_TRhFunUSU_MERSEX: TStringField;
    btnGravar: TBitBtn;
    lbl1: TLabel;
    procedure BImportarClick(Sender: TObject);
    procedure TbImportacaoShow(Sender: TObject);
    procedure ConsR034FunImpAfterScroll(DataSet: TDataSet);
    procedure EdNumCadExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CbMesChange(Sender: TObject);
    procedure BConsFuncionarioClick(Sender: TObject);
    procedure EdNumCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BLancarTituloClick(Sender: TObject);
    procedure ConsAdtAbertoCalcFields(DataSet: TDataSet);
    procedure BReceberAdtClick(Sender: TObject);
    procedure ConsAdtAbertoAfterScroll(DataSet: TDataSet);
    procedure ConsAdtPagoAfterScroll(DataSet: TDataSet);
    procedure BExtornarBaixaAbertoClick(Sender: TObject);
    procedure BExtornarBaixaPagoClick(Sender: TObject);
    procedure BImprimirDuplicataClick(Sender: TObject);
    procedure BGerarAdiantamentoClick(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DsConsUsu_TRhFunStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    vnTotAberto : double;
  public
    { Public declarations }
  end;

var
  FGerenciaFuncionario: TFGerenciaFuncionario;

implementation

uses UDmRubi, UDmOra, UConsFuncionarios, ULancaAdiantamentosFuncionarios,
  UReceberAdiantamentosFuncionario, UImprimiReciboAdtFunc;

{$R *.dfm}

procedure TFGerenciaFuncionario.BConsFuncionarioClick(Sender: TObject);
begin
   if FConsFuncionarios.ShowModal = mrOk then
      begin//1
        if not DmOra.ConsFuncionarios.IsEmpty then
           begin//2
              EdNumCad.Text := IntToStr(DmOra.ConsFuncionariosUSU_NUMCAD.AsInteger);
              EdNumCadExit(Sender);
           end;//2
      end;//1
end;

procedure TFGerenciaFuncionario.BExtornarBaixaAbertoClick(Sender: TObject);
begin
    if not ConsAdtPgtAberto.IsEmpty then
       begin//1
         if Application.MessageBox('Deseja extornar o pagamento?', 'Extorno de Pagamento', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin//11
                   DmOra.CadUsu_TRhAdtPgt.Close;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('NUMCAD').Value := ConsAdtPgtAbertoUSU_NUMCAD.Value;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('NUMADT').Value := ConsAdtPgtAbertoUSU_NUMADT.Value;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('SEQADT').Value := ConsAdtPgtAbertoUSU_SEQADT.Value;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('SEQPGT').Value := ConsAdtPgtAbertoUSU_SEQPGT.Value;
                   DmOra.CadUsu_TRhAdtPgt.Open;
                   if not DmOra.CadUsu_TRhAdtPgt.IsEmpty then
                      begin//2
                        DmOra.CadUsu_TRhAdtFun.Close;
                        DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('NUMCAD').Value := DmOra.CadUsu_TRhAdtPgtUSU_NUMCAD.Value;
                        DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('NUMADT').Value := DmOra.CadUsu_TRhAdtPgtUSU_NUMADT.Value;
                        DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('SEQADT').Value := DmOra.CadUsu_TRhAdtPgtUSU_SEQADT.Value;
                        DmOra.CadUsu_TRhAdtFun.Open;
                        if not DmOra.CadUsu_TRhAdtFun.IsEmpty then
                           begin//3
                             DmOra.CadUsu_TRhAdtFun.Edit;
                             DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value := DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value - DmOra.CadUsu_TRhAdtPgtUSU_VLRPGT.Value;
                             DmOra.CadUsu_TRhAdtFunUSU_VLRABE.Value := DmOra.CadUsu_TRhAdtFunUSU_VLRPAR.Value - DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value;
                             DmOra.CadUsu_TRhAdtFun.Post;

                             DmOra.CadUsu_TRhAdtPgt.Delete;

                             {ConsAdtAberto.Close;
                             ConsAdtAberto.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
                             ConsAdtAberto.Open;
                             if ConsAdtAberto.IsEmpty then
                                ConsAdtPgtAberto.Close;

                             ConsAdtPago.Close;
                             ConsAdtPago.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
                             ConsAdtPago.Open;
                             if ConsAdtPago.IsEmpty then
                                ConsAdtPgtPago.Close;}

                             EdNumCadExit(Sender);
                           end;//3
                      end;//2


            End;//11
       end;//1

end;

procedure TFGerenciaFuncionario.BExtornarBaixaPagoClick(Sender: TObject);
begin
if not ConsAdtPgtPago.IsEmpty then
       begin//1
         if Application.MessageBox('Deseja extornar o pagamento?', 'Extorno de Pagamento', MB_ICONQUESTION+MB_YESNO) = idyes then
            Begin//11
                   DmOra.CadUsu_TRhAdtPgt.Close;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('NUMCAD').Value := ConsAdtPgtPagoUSU_NUMCAD.Value;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('NUMADT').Value := ConsAdtPgtPagoUSU_NUMADT.Value;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('SEQADT').Value := ConsAdtPgtPagoUSU_SEQADT.Value;
                   DmOra.CadUsu_TRhAdtPgt.Parameters.ParamByName('SEQPGT').Value := ConsAdtPgtPagoUSU_SEQPGT.Value;
                   DmOra.CadUsu_TRhAdtPgt.Open;
                   if not DmOra.CadUsu_TRhAdtPgt.IsEmpty then
                      begin//2
                        DmOra.CadUsu_TRhAdtFun.Close;
                        DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('NUMCAD').Value := DmOra.CadUsu_TRhAdtPgtUSU_NUMCAD.Value;
                        DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('NUMADT').Value := DmOra.CadUsu_TRhAdtPgtUSU_NUMADT.Value;
                        DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('SEQADT').Value := DmOra.CadUsu_TRhAdtPgtUSU_SEQADT.Value;
                        DmOra.CadUsu_TRhAdtFun.Open;
                        if not DmOra.CadUsu_TRhAdtFun.IsEmpty then
                           begin//3
                             DmOra.CadUsu_TRhAdtFun.Edit;
                             DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value := DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value - DmOra.CadUsu_TRhAdtPgtUSU_VLRPGT.Value;
                             DmOra.CadUsu_TRhAdtFunUSU_VLRABE.Value := DmOra.CadUsu_TRhAdtFunUSU_VLRPAR.Value - DmOra.CadUsu_TRhAdtFunUSU_VLRPGT.Value;
                             DmOra.CadUsu_TRhAdtFunUSU_SITADT.Value := 'A';
                             DmOra.CadUsu_TRhAdtFun.Post;

                             DmOra.CadUsu_TRhAdtPgt.Delete;

                             {ConsAdtAberto.Close;
                             ConsAdtAberto.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
                             ConsAdtAberto.Open;
                             if ConsAdtAberto.IsEmpty then
                                ConsAdtPgtAberto.Close;

                             ConsAdtPago.Close;
                             ConsAdtPago.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
                             ConsAdtPago.Open;
                             if ConsAdtPago.IsEmpty then
                                ConsAdtPgtPago.Close;}
                            EdNumCadExit(Sender);
                           end;//3
                      end;//2


            End;//11
       end;//1
end;

procedure TFGerenciaFuncionario.BGerarAdiantamentoClick(Sender: TObject);
begin
if (ConsSerMovUSU_INADT.Value = 'S') and (ConsSerMovUSU_VLRCOB.Value > 0) and (ConsSerMovUSU_ADTGER.Value = 'N') then
   begin
      FLancaAdiantamentosFuncionarios := TFLancaAdiantamentosFuncionarios.Create(Self);
      FLancaAdiantamentosFuncionarios.EdVlrAdt.Value := ConsSerMovUSU_VLRCOB.Value;
      if FLancaAdiantamentosFuncionarios.ShowModal = mrOk then
         begin
            DmOra.CadUsu_TRhSerMov.Close;
            DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('CODSER').Value := ConsSerMovUSU_CODSER.Value;
            DmOra.CadUsu_TRhSerMov.Parameters.ParamByName('SEQSER').Value := ConsSerMovUSU_SEQSER.Value;
            DmOra.CadUsu_TRhSerMov.Open;
            if not DmOra.CadUsu_TRhSerMov.IsEmpty then
               begin
                  //grava que o adiantamento ja foi gerado
                  DmOra.CadUsu_TRhSerMov.Edit;
                  DmOra.CadUsu_TRhSerMovUSU_ADTGER.Value := 'S';
                  DmOra.CadUsu_TRhSerMovUSU_DATGADT.Value := DATE;
                  DmOra.CadUsu_TRhSerMov.Post;

               end;

         end;
      FreeAndNil(FLancaAdiantamentosFuncionarios);


      EdNumCadExit(Sender);
   end;
end;

procedure TFGerenciaFuncionario.BImportarClick(Sender: TObject);
VAR cursor : TCursor;
begin
    cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;

    DmRubi.ConsR034FunImp.Close;
    DmRubi.ConsR034FunImp.Open;
    while not DmRubi.ConsR034FunImp.Eof do
       begin//1
          DmOra.CadUsu_TRhFun.Close;
          DmOra.CadUsu_TRhFun.Parameters.ParamByName('NUMCAD').Value := DmRubi.ConsR034FunImpNUMCAD.AsInteger;
          DmOra.CadUsu_TRhFun.Parameters.ParamByName('CODDEP').Value := DmRubi.ConsR034FunImpNUMCAD.AsInteger;
          DmOra.CadUsu_TRhFun.Open;
          if DmOra.CadUsu_TRhFun.IsEmpty then
             begin//2
               DmOra.CadUsu_TRhFun.Insert;
               DmOra.CadUsu_TRhFunUSU_NUMCAD.Value := DmRubi.ConsR034FunImpNUMCAD.Value;
               DmOra.CadUsu_TRhFunUSU_CODDEP.Value := DmRubi.ConsR034FunImpNUMCAD.Value;
               DmOra.CadUsu_TRhFunUSU_NOMFUN.Value := DmRubi.ConsR034FunImpNOMFUN.Value;
               DmOra.CadUsu_TRhFunUSU_APEFUN.Value := DmRubi.ConsR034FunImpAPEFUN.Value;
               DmOra.CadUsu_TRhFunUSU_DATADM.Value := DmRubi.ConsR034FunImpDATADM.Value;
               DmOra.CadUsu_TRhFunUSU_NUMCPF.Value := DmRubi.ConsR034FunImpNUMCPF.Value;
               DmOra.CadUsu_TRhFunUSU_TIPCOL.Value := 'FUNCIONARIO';
               DmOra.CadUsu_TRhFunUSU_SITAFA.Value := DmRubi.ConsR034FunImpSITAFA.Value;
               DmOra.CadUsu_TRhFunUSU_SITDEP.Value := '';

               case DmOra.CadUsu_TRhFunUSU_SITAFA.Value of
                 1 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'TRABALHANDO';
                 2 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'FERIAS';
                 3 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'AUXILIO DOENCA';
                 4 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'ACIDENTE TRABALHO';
                 5 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'SERVICO MILITAR';
                 6 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LICENCA MATERNIDADE';
                 7 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'DEMITIDO';
                 12 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'FERIAS COLETIVAS';
                 14 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LIC. MEDICA - 15 DIAS';
                 15 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'FALTAS';
                 19 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LICENCA MATERNIDADE';
                 23 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LIC. MEDICA - 15 DIAS';
                 103 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'APOSENTADORIA';
               end;

               DmOra.CadUsu_TRhFunUSU_GRAPAR.Value := 999;
               DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'MESMA';
               DmOra.CadUsu_TRhFun.Post;

             end//2
          else
             begin//3
               DmOra.CadUsu_TRhFun.Edit;
               DmOra.CadUsu_TRhFunUSU_NOMFUN.Value := DmRubi.ConsR034FunImpNOMFUN.Value;
               DmOra.CadUsu_TRhFunUSU_APEFUN.Value := DmRubi.ConsR034FunImpAPEFUN.Value;
               DmOra.CadUsu_TRhFunUSU_DATADM.Value := DmRubi.ConsR034FunImpDATADM.Value;
               DmOra.CadUsu_TRhFunUSU_NUMCPF.Value := DmRubi.ConsR034FunImpNUMCPF.Value;
               DmOra.CadUsu_TRhFunUSU_SITAFA.Value := DmRubi.ConsR034FunImpSITAFA.Value;
               DmOra.CadUsu_TRhFunUSU_SITDEP.Value := '';

               case DmOra.CadUsu_TRhFunUSU_SITAFA.Value of
                 1 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'TRABALHANDO';
                 2 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'FERIAS';
                 3 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'AUXILIO DOENCA';
                 4 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'ACIDENTE TRABALHO';
                 5 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'SERVICO MILITAR';
                 6 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LICENCA MATERNIDADE';
                 7 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'DEMITIDO';
                 12 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'FERIAS COLETIVAS';
                 14 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LIC. MEDICA - 15 DIAS';
                 15 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'FALTAS';
                 19 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LICENCA MATERNIDADE';
                 23 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'LIC. MEDICA - 15 DIAS';
                 103 : DmOra.CadUsu_TRhFunUSU_DESSIT.Value := 'APOSENTADORIA';
               end;
               DmOra.CadUsu_TRhFun.Post;

             end;//3

             //CONSULTA OS DEPENDENTES
             DmRubi.ConsR036DepImp.Close;
             DmRubi.ConsR036DepImp.Parameters.ParamByName('NUMCAD').Value := DmRubi.ConsR034FunImpNUMCAD.Value;
             DmRubi.ConsR036DepImp.Open;
             while not DmRubi.ConsR036DepImp.Eof do
                begin//4
                   DmOra.CadUsu_TRhFun.Close;
                   DmOra.CadUsu_TRhFun.Parameters.ParamByName('NUMCAD').Value := DmRubi.ConsR036DepImpNUMCAD.Value;
                   DmOra.CadUsu_TRhFun.Parameters.ParamByName('CODDEP').Value := DmRubi.ConsR036DepImpCODDEP.Value;
                   DmOra.CadUsu_TRhFun.Open;
                   if DmOra.CadUsu_TRhFun.IsEmpty then
                      begin//5
                        DmOra.CadUsu_TRhFun.Insert;
                        DmOra.CadUsu_TRhFunUSU_NUMCAD.Value := DmRubi.ConsR036DepImpNUMCAD.Value;
                        DmOra.CadUsu_TRhFunUSU_CODDEP.Value := DmRubi.ConsR036DepImpCODDEP.Value;
                        DmOra.CadUsu_TRhFunUSU_NOMFUN.Value := DmRubi.ConsR036DepImpNOMDEP.Value;
                        DmOra.CadUsu_TRhFunUSU_APEFUN.Value := DmRubi.ConsR036DepImpNOMDEP.Value;
                        DmOra.CadUsu_TRhFunUSU_DATADM.Value := 0;
                        DmOra.CadUsu_TRhFunUSU_NUMCPF.Value := DmRubi.ConsR036DepImpNUMCPF.Value;
                        DmOra.CadUsu_TRhFunUSU_TIPCOL.Value := 'DEPENDENTE';
                        DmOra.CadUsu_TRhFunUSU_SITAFA.Value := 999;
                        DmOra.CadUsu_TRhFunUSU_SITDEP.Value := 'ATIVO';
                        if DmRubi.ConsR034FunImpSITAFA.Value = 7 then
                           DmOra.CadUsu_TRhFunUSU_SITDEP.Value := 'INATIVO';

                        DmOra.CadUsu_TRhFunUSU_DESSIT.Value := '';
                        DmOra.CadUsu_TRhFunUSU_GRAPAR.Value := DmRubi.ConsR036DepImpGRAPAR.Value;

                        case DmOra.CadUsu_TRhFunUSU_GRAPAR.Value  of
                          1 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'FILHO(A)';
                          2 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'CONJUGUE';
                          3 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'PAI/MAE';
                          4 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'AVÔ/AVÓ';
                          5 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'BISAVO(Ó)';
                          6 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'SOBRINHO(A)';
                          7 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'TIO(A)';
                          8 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'NETO(A)';
                          9 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'SOGRO(A)';
                          10 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'GENRO/NORA';
                          11 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'ENTEADO(A)';
                          12 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'IRMAO(A)';
                          14 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'FILHO(A) ADOTIVO(A)';
                          15 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'PENSIONISTAS';
                          16 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'COMPANHEIRO(A)';
                          17 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'TUTELADO';
                          18 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'MENOR SOB GUARDA';
                          19 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'MADRASTA';
                          20 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'PADRASTO';
                          21 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'TUTOR';
                          22 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'EX-ESPOSO(A)';
                          23 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'BISNETO(A)';
                          24 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'EX-COMPANHEIRO(A)';
                          25 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'CONCUBINO(A)';
                          99 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'OUTROS';
                        end;

                        DmOra.CadUsu_TRhFun.Post;
                      end//5
                   else
                      begin//6
                        DmOra.CadUsu_TRhFun.Edit;
                        DmOra.CadUsu_TRhFunUSU_NOMFUN.Value := DmRubi.ConsR036DepImpNOMDEP.Value;
                        DmOra.CadUsu_TRhFunUSU_APEFUN.Value := DmRubi.ConsR036DepImpNOMDEP.Value;
                        DmOra.CadUsu_TRhFunUSU_DATADM.Value := 0;
                        DmOra.CadUsu_TRhFunUSU_NUMCPF.Value := DmRubi.ConsR036DepImpNUMCPF.Value;
                        DmOra.CadUsu_TRhFunUSU_TIPCOL.Value := 'DEPENDENTE';
                        DmOra.CadUsu_TRhFunUSU_SITAFA.Value := 999;

                        if DmRubi.ConsR034FunImpSITAFA.Value = 7 then
                           DmOra.CadUsu_TRhFunUSU_SITDEP.Value := 'INATIVO';

                        DmOra.CadUsu_TRhFunUSU_GRAPAR.Value := DmRubi.ConsR036DepImpGRAPAR.Value;

                        case DmOra.CadUsu_TRhFunUSU_GRAPAR.Value  of
                          1 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'FILHO(A)';
                          2 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'CONJUGUE';
                          3 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'PAI/MAE';
                          4 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'AVÔ/AVÓ';
                          5 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'BISAVO(Ó)';
                          6 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'SOBRINHO(A)';
                          7 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'TIO(A)';
                          8 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'NETO(A)';
                          9 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'SOGRO(A)';
                          10 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'GENRO/NORA';
                          11 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'ENTEADO(A)';
                          12 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'IRMAO(A)';
                          14 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'FILHO(A) ADOTIVO(A)';
                          15 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'PENSIONISTAS';
                          16 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'COMPANHEIRO(A)';
                          17 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'TUTELADO';
                          18 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'MENOR SOB GUARDA';
                          19 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'MADRASTA';
                          20 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'PADRASTO';
                          21 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'TUTOR';
                          22 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'EX-ESPOSO(A)';
                          23 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'BISNETO(A)';
                          24 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'EX-COMPANHEIRO(A)';
                          25 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'CONCUBINO(A)';
                          99 : DmOra.CadUsu_TRhFunUSU_DESPAR.Value := 'OUTROS';
                        end;

                        DmOra.CadUsu_TRhFun.Post;

                      end;//6
                  DmRubi.ConsR036DepImp.Next;
                end;//4


          DmRubi.ConsR034FunImp.Next;
       end;//1

       ConsR034FunImp.Close;
       ConsR034FunImp.Open;

       Screen.Cursor := cursor;
end;

procedure TFGerenciaFuncionario.BImprimirDuplicataClick(Sender: TObject);
begin
    FImprimiReciboAdtFunc := TFImprimiReciboAdtFunc.Create(Self);
    FImprimiReciboAdtFunc.EdNumCad.Value := ConsAdtAbertoUSU_NUMCAD.Value;
    FImprimiReciboAdtFunc.EdNumAdt.Value := ConsAdtAbertoUSU_NUMADT.Value;

    FImprimiReciboAdtFunc.ShowModal;
    FreeAndNil(FImprimiReciboAdtFunc);
end;

procedure TFGerenciaFuncionario.BLancarTituloClick(Sender: TObject);
begin

    FLancaAdiantamentosFuncionarios := TFLancaAdiantamentosFuncionarios.Create(Self);
    //FLancaAdiantamentosFuncionarios.vnNumCad := ConsUsu_TRhFunUSU_NUMCAD.Value;
    FLancaAdiantamentosFuncionarios.ShowModal;
    FreeAndNil(FLancaAdiantamentosFuncionarios);

    {ConsAdtAberto.Close;
    ConsAdtAberto.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
    ConsAdtAberto.Open;}
    EdNumCadExit(Sender);
end;

procedure TFGerenciaFuncionario.BReceberAdtClick(Sender: TObject);
begin
    if not ConsAdtAberto.IsEmpty then
       begin//1
         DmOra.CadUsu_TRhAdtFun.Close;
         DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('NUMCAD').Value := ConsAdtAbertoUSU_NUMCAD.Value;
         DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('NUMADT').Value := ConsAdtAbertoUSU_NUMADT.Value;
         DmOra.CadUsu_TRhAdtFun.Parameters.ParamByName('SEQADT').Value := ConsAdtAbertoUSU_SEQADT.Value;
         DmOra.CadUsu_TRhAdtFun.Open;
         if not DmOra.CadUsu_TRhAdtFun.IsEmpty then
            begin//2
               DmOra.CadUsu_TRhAdtFun.Edit;

               FReceberAdiantamentosFuncionario := TFReceberAdiantamentosFuncionario.Create(Self);
               FReceberAdiantamentosFuncionario.ShowModal;
               FreeAndNil(FReceberAdiantamentosFuncionario);

            end;//2

         {ConsAdtAberto.Close;
         ConsAdtAberto.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
         ConsAdtAberto.Open;
         if ConsAdtAberto.IsEmpty then
            ConsAdtPgtAberto.Close;

         ConsAdtPago.Close;
         ConsAdtPago.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
         ConsAdtPago.Open;
         if ConsAdtPago.IsEmpty then
            ConsAdtPgtPago.Close;}

        EdNumCadExit(Sender);
       end;//1


end;

procedure TFGerenciaFuncionario.btnGravarClick(Sender: TObject);
begin
  ConsUsu_TRhFun.Post;
end;

procedure TFGerenciaFuncionario.CbMesChange(Sender: TObject);
begin
if (trim(EdAno.Text) <> '') and (trim(EdNumCad.Text) <> '') then
   begin
      ConsSerMov.Close;
      ConsSerMov.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
      ConsSerMov.Parameters.ParamByName('ANOSER').Value := StrToInt(EdAno.Text);
      ConsSerMov.Parameters.ParamByName('NUMCAD').Value := ConsUsu_TRhFunUSU_NUMCAD.Value;
      ConsSerMov.Open;
   end
else
   begin
      ConsSerMov.Close;
      ConsSerMov.Active := false;
   end;
end;

procedure TFGerenciaFuncionario.ConsAdtAbertoAfterScroll(DataSet: TDataSet);
begin
  ConsAdtPgtAberto.Close;
  ConsAdtPgtAberto.Parameters.ParamByName('NUMCAD').Value := ConsAdtAbertoUSU_NUMCAD.Value;
  ConsAdtPgtAberto.Parameters.ParamByName('NUMADT').Value := ConsAdtAbertoUSU_NUMADT.Value;
  ConsAdtPgtAberto.Parameters.ParamByName('SEQADT').Value := ConsAdtAbertoUSU_SEQADT.Value;
  ConsAdtPgtAberto.Open;


end;

procedure TFGerenciaFuncionario.ConsAdtAbertoCalcFields(DataSet: TDataSet);
var vnqtdDia : integer;
begin

  vnqtdDia := DaysBetween(ConsAdtAbertoUSU_DATVCT.Value,Date);
  if ConsAdtAbertoUSU_DATVCT.Value < date then
     vnqtdDia := vnqtdDia * (-1);

  ConsAdtAbertoQTDDIA.Value := vnqtdDia;

end;

procedure TFGerenciaFuncionario.ConsAdtPagoAfterScroll(DataSet: TDataSet);
begin
  ConsAdtPgtPago.Close;
  ConsAdtPgtPago.Parameters.ParamByName('NUMCAD').Value := ConsAdtPagoUSU_NUMCAD.Value;
  ConsAdtPgtPago.Parameters.ParamByName('NUMADT').Value := ConsAdtPagoUSU_NUMADT.Value;
  ConsAdtPgtPago.Parameters.ParamByName('SEQADT').Value := ConsAdtPagoUSU_SEQADT.Value;
  ConsAdtPgtPago.Open;
end;

procedure TFGerenciaFuncionario.ConsR034FunImpAfterScroll(DataSet: TDataSet);
begin
  ConsR034DepImp.Close;
  ConsR034DepImp.Parameters.ParamByName('NUMCAD').Value := ConsR034FunImpUSU_NUMCAD.Value;
  ConsR034DepImp.Open;
end;

procedure TFGerenciaFuncionario.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
Key:= Upcase(Key);
end;

procedure TFGerenciaFuncionario.DsConsUsu_TRhFunStateChange(Sender: TObject);
begin
    if ConsUsu_TRhFun.State in [dsInsert,dsEdit] then
       begin
          btnGravar.Enabled := True;
       end
    else
       begin
          btnGravar.Enabled := False;
       end;
end;

procedure TFGerenciaFuncionario.EdNumCadExit(Sender: TObject);
begin
  vnTotAberto := 0;
  if trim(EdNumCad.Text) <> '' then
     begin//1
        ConsUsu_TRhFun.Close;
        ConsUsu_TRhFun.Parameters.ParamByName('NUMCAD').Value := StrToInt(trim(EdNumCad.Text));
        ConsUsu_TRhFun.Open;
        if ConsUsu_TRhFun.IsEmpty then
           begin//2
             ConsUsu_TRhFunDep.Close;

             ConsSerMov.Close;
             ConsSerMov.Active := false;

             ConsAdtAberto.Close;
             ConsAdtAberto.Active := false;

           end//2
        else
           begin//3
              ConsUsu_TRhFunDep.Close;
              ConsUsu_TRhFunDep.Parameters.ParamByName('NUMCAD').Value := StrToInt(trim(EdNumCad.Text));
              ConsUsu_TRhFunDep.Open;

              ConsAdtAberto.Close;
              ConsAdtAberto.Parameters.ParamByName('NUMCAD').Value := StrToInt(trim(EdNumCad.Text));
              ConsAdtAberto.Open;
              ConsAdtAberto.First;
              while not ConsAdtAberto.Eof do
                 begin
                   vnTotAberto := vnTotAberto + ConsAdtAbertoUSU_VLRABE.Value;
                   ConsAdtAberto.Next;
                 end;
              ConsAdtAberto.First;


              ConsAdtPago.Close;
              ConsAdtPago.Parameters.ParamByName('NUMCAD').Value := StrToInt(trim(EdNumCad.Text));
              ConsAdtPago.Open;

              CbMesChange(Sender);
           end;//3

     end//1
  else
     begin//4

     end;//4

     EdTotAberto.Value := vnTotAberto;
end;

procedure TFGerenciaFuncionario.EdNumCadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
     begin
       BConsFuncionario.Click;
     end;
end;

procedure TFGerenciaFuncionario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
canClose := False;
with application do
 if ConsUsu_TRhFun.State in [dsInsert,dsedit] then
  begin
   MessageDlg('Confirme as alterações no cadastro antes de fechar',mtWarning,[mbok],0);
  end
 else
   canclose := true;
end;

procedure TFGerenciaFuncionario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFGerenciaFuncionario.FormShow(Sender: TObject);
var Ano,Mes,Dia : word;
begin
    DecodeDate(date,Ano,Mes,Dia);

    CbMes.ItemIndex := Mes;
    EdAno.Text := IntToStr(Ano);

    PaginaControle.ActivePageIndex := 0;
    PaginaControleAdiantamentos.ActivePageIndex := 0;

    ConsUsu_TRhFun.Open;
end;

procedure TFGerenciaFuncionario.TbImportacaoShow(Sender: TObject);
begin
  ConsR034FunImp.Close;
  ConsR034FunImp.Open;
end;

end.
