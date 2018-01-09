unit UAltDadosGeraisPedSysRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, Mask, rxToolEdit,
  ADODB;

type
  TFAltDadosGeraisPedSysRep = class(TForm)
    Label1: TLabel;
    LDsCodCpg: TLabel;
    BProcessar: TBitBtn;
    EdCodCpg: TEdit;
    BConsCodCpg: TBitBtn;
    ValidaCodCpg3: TIBQuery;
    ValidaCodCpg3CODCPG: TIBStringField;
    ValidaCodCpg3DESCPG: TIBStringField;
    edtDatEmi: TDateEdit;
    Label2: TLabel;
    ValidaCodCpg: TADOQuery;
    ValidaCodCpgCODREP: TIntegerField;
    ValidaCodCpgCODMAR: TStringField;
    ValidaCodCpgEMPCPG: TIntegerField;
    ValidaCodCpgCODCPG: TStringField;
    ValidaCodCpgSITLRC: TStringField;
    ValidaCodCpgUSUGER: TBCDField;
    ValidaCodCpgDATGER: TDateTimeField;
    ValidaCodCpgHORGER: TIntegerField;
    ValidaCodCpgUSUALT: TBCDField;
    ValidaCodCpgDATALT: TDateTimeField;
    ValidaCodCpgHORALT: TIntegerField;
    ValidaCodCpgDESCPG: TStringField;
    procedure BConsCodCpgClick(Sender: TObject);
    procedure BProcessarClick(Sender: TObject);
    procedure EdCodCpgExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCpgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAltDadosGeraisPedSysRep: TFAltDadosGeraisPedSysRep;

implementation

uses UConsGeralNfEnt, UDmFire, UPedidoSysRep, UDmOra;

{$R *.dfm}

procedure TFAltDadosGeraisPedSysRep.BConsCodCpgClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e028cpg.codcpg,e028cpg.descpg,e028cpg.abrcpg,e028cpg.przmed,e028cpg.qtdpar from e028cpg';

    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'CodCpg';
    FConsGeralNfEnt.vnColuna := 999999;
    FConsGeralNfEnt.vaTela := 'FAltDadosGeraisPedSysRep';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCpg;
end;

procedure TFAltDadosGeraisPedSysRep.BProcessarClick(Sender: TObject);
begin
  if trim(EdCodCpg.Text) = '' then
     begin
       MessageDlg('Informe a Condição de Pagamento',mtWarning,[mbOK],0);
       ActiveControl := EdCodCpg;
       abort;
     end;

  if edtDatEmi.Date = 0 then
     begin
       MessageDlg('Informe a Emissão',mtWarning,[mbOK],0);
       ActiveControl := edtDatEmi;
       abort;
     end;

     if Application.MessageBox('Confirmar Alteração?','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrYes then
        begin//1
          DmFire.CadE120Ped.Close;
          DmFire.CadE120Ped.ParamByName('codemp').Value := DmFire.ConsE120PedChegouCODEMP.Value;
          DmFire.CadE120Ped.ParamByName('codfil').Value := DmFire.ConsE120PedChegouCODFIL.Value;
          DmFire.CadE120Ped.ParamByName('numcon').Value := DmFire.ConsE120PedChegouNUMCON.Value;
          DmFire.CadE120Ped.ParamByName('codrep').Value := DmFire.ConsE120PedChegouCODREP.Value;
          DmFire.CadE120Ped.Open;
          if not DmFire.CadE120Ped.IsEmpty then
             begin
               DmFire.CadE120Ped.Edit;
               DmFire.CadE120PedCODCPG.Value := trim(EdCodCpg.Text);
               DmFire.CadE120PedDATEMI.Value := edtDatEmi.Date;
               DmFire.CadE120Ped.Post;
               DmFire.IBTransacao.CommitRetaining;
               FPedidoSysRep.LDesCpg.Caption := LDsCodCpg.Caption;
               FPedidoSysRep.LDatEmi.Caption := DateToStr(edtDatEmi.Date);
               Close;
             end;
        end;//1
end;

procedure TFAltDadosGeraisPedSysRep.EdCodCpgExit(Sender: TObject);
begin
    if trim(EdCodCpg.Text) = '' then
       begin
         LDsCodCpg.Caption := '';
       end
    else
       begin
         ValidaCodCpg.Close;
         ValidaCodCpg.Parameters.ParamByName('EMPCPG').Value := DmFire.ConsE120PedChegouCODEMP.Value;
         ValidaCodCpg.Parameters.ParamByName('CODCPG').Value := trim(EdCodCpg.Text);
         ValidaCodCpg.Parameters.ParamByName('CODREP').Value := DmFire.ConsE120PedChegouCODREP.Value;
         ValidaCodCpg.Open;
         if ValidaCodCpg.IsEmpty then
            begin
               MessageDlg('Condição de Pagamento não encontrada',mtWarning,[mbOK],0);
               ActiveControl := EdCodCpg;
            end
         ELSE
            begin
              if ValidaCodCpgSITLRC.Value = 'I' then
                 begin
                   MessageDlg('Ligação Condição de Pagamento x Representante está inativa',mtWarning,[mbOK],0);
                   ActiveControl := EdCodCpg;
                 end
              else
                 begin
                   LDsCodCpg.Caption := ValidaCodCpgDESCPG.Value;
                 end;
            end;

       end;
end;

procedure TFAltDadosGeraisPedSysRep.EdCodCpgKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_f3 then
     BConsCodCpg.Click;
end;

procedure TFAltDadosGeraisPedSysRep.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.



