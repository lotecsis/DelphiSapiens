unit UComparaComprasClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons, DB,
  DBCtrls, rxCurrEdit, ImgList;

type
  TFComparaComprasClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    EdDatIniAtu: TDateEdit;
    EdDatFimAtu: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdCodCli: TEdit;
    Label3: TLabel;
    EdCodRep: TEdit;
    RbAbaixo: TRadioButton;
    RbAcima: TRadioButton;
    RbTodos: TRadioButton;
    BitBtn1: TBitBtn;
    DsComparativoComprasCli: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ImageList1: TImageList;
    EdTotFatAnt: TCurrencyEdit;
    EdTotFatAtu: TCurrencyEdit;
    EdTotFatPed: TCurrencyEdit;
    DBE_TOTESTOFANT: TDBEdit;
    DBE_TOTCOLCHANT: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdDifTotal: TCurrencyEdit;
    Label14: TLabel;
    EdTotEstofAtu: TCurrencyEdit;
    EdTotColchAtu: TCurrencyEdit;
    EdTotPedAbeAtu: TCurrencyEdit;
    Panel7: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DsComparativoComprasCliMes: TDataSource;
    DBE_TOTJANEIROANT: TDBEdit;
    DBE_TOTFEVEREIROANT: TDBEdit;
    DBE_TOTMARCOANT: TDBEdit;
    DBE_TOTABRILANT: TDBEdit;
    DBE_TOTMAIOANT: TDBEdit;
    DBE_TOTJUNHOANT: TDBEdit;
    DBE_TOTJANEIROATU: TDBEdit;
    DBE_TOTFEVEREIROATU: TDBEdit;
    DBE_TOTMARCOATU: TDBEdit;
    DBE_TOTABRILATU: TDBEdit;
    DBE_TOTMAIOATU: TDBEdit;
    DBE_TOTJUNHOATU: TDBEdit;
    DBE_TOTJULHOANT: TDBEdit;
    DBE_TOTAGOSTOANT: TDBEdit;
    DBE_TOTSETEMBROANT: TDBEdit;
    DBE_TOTOUTUBROANT: TDBEdit;
    DBE_TOTNOVEMBROANT: TDBEdit;
    DBE_TOTDEZEMBROANT: TDBEdit;
    DBE_TOTJULHOATU: TDBEdit;
    DBE_TOTAGOSTOATU: TDBEdit;
    DBE_TOTSETEMBROATU: TDBEdit;
    DBE_TOTOUTUBROATU: TDBEdit;
    DBE_TOTNOVEMBROATU: TDBEdit;
    DBE_TOTDEZEMBROATU: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label27: TLabel;
    LDatIni: TLabel;
    LDatFim: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Panel8: TPanel;
    Label30: TLabel;
    DsConsE301Tcr: TDataSource;
    DBE_VLRAVEN: TDBEdit;
    DBE_VLRVEN: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    EdVlrUpe: TCurrencyEdit;
    EdDatUpe: TDateEdit;
    EdVlrUfa: TCurrencyEdit;
    EdDatUfa: TDateEdit;
    EdUltNfv: TEdit;
    EdUltSnf: TEdit;
    EdDatUpg: TDateEdit;
    EdVlrUpg: TCurrencyEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    EdMaiAtr: TCurrencyEdit;
    EdVlrAtr: TCurrencyEdit;
    Label38: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdDifTotalChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
  private
    { Private declarations }
    vaDatIniAnt,vaDatFimAnt : string;
  public
    { Public declarations }
  end;

var
  FComparaComprasClientes: TFComparaComprasClientes;

implementation

uses UDmOra, UConsGeralNfEnt, UProdutosComparaComprasClientes;

{$R *.dfm}

procedure TFComparaComprasClientes.BitBtn1Click(Sender: TObject);
var vaDia,vaMes,vaAno : word;

begin
    if EdDatIniAtu.Date = 0 then
       begin
         Application.MessageBox('Informe a data inicial','AVISO', MB_ICONWARNING+MB_OK);
         ActiveControl := EdDatIniAtu;
       end
    else
    if EdDatFimAtu.Date = 0 then
       begin
          Application.MessageBox('Informe a data final','AVISO', MB_ICONWARNING+MB_OK);
          ActiveControl := EdDatFimAtu;
       end
    else
       begin//1
          LDatIni.Caption := DateToStr(EdDatIniAtu.Date);
          LDatFim.Caption := DateToStr(EdDatFimAtu.Date);

          DecodeDate(EdDatIniAtu.Date, vaAno, vaMes, vaDia);
          vaDatIniAnt := IntToStr(vaDia)+'/'+IntToStr(vaMes)+'/'+IntToStr(vaAno - 1);

          DecodeDate(EdDatFimAtu.Date, vaAno, vaMes, vaDia);
          vaDatFimAnt := IntToStr(vaDia)+'/'+IntToStr(vaMes)+'/'+IntToStr(vaAno - 1);

          DmOra.ComparativoComprasCli.Close;
          DmOra.ComparativoComprasCli.SQL.Clear;
          DmOra.ComparativoComprasCli.SQL.Add('select e085cli.codcli,e085cli.nomcli,e085cli.apecli,e085cli.cidcli,e085cli.sigufs,e085cli.foncli,e085cli.emanfe,');
          DmOra.ComparativoComprasCli.SQL.Add('e085hcl.codrep,e090rep.aperep,');
          DmOra.ComparativoComprasCli.SQL.Add('(select sum(e140ipv.vlrbru) from e140ipv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e075pro on e075pro.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codpro = e140ipv.codpro');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codagc = ''ESTOF'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatEstofIAnt and :DatEstofFAnt) as TotEstofAnt,');
          DmOra.ComparativoComprasCli.SQL.Add('(select sum(e140ipv.vlrbru) from e140ipv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e075pro on e075pro.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codpro = e140ipv.codpro');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codagc = ''ESTOF'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatEstofIAtu and :DatEstofFAtu)');
          DmOra.ComparativoComprasCli.SQL.Add('as TotEstofAtu,');
          DmOra.ComparativoComprasCli.SQL.Add('(select sum(e140ipv.vlrbru) from e140ipv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e075pro on e075pro.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codpro = e140ipv.codpro');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codagc = ''COLCH'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatColchIAnt and :DatColchFAnt) as TotColchAnt,');
          DmOra.ComparativoComprasCli.SQL.Add('(select sum(e140ipv.vlrbru) from e140ipv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e075pro on e075pro.codemp = e140ipv.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codpro = e140ipv.codpro');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codagc = ''COLCH'' and');
          DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
          DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatColchIAtu and :DatColchFAtu)');
          DmOra.ComparativoComprasCli.SQL.Add('as TotColchAtu,');
          DmOra.ComparativoComprasCli.SQL.Add('(select sum(e120ipd.vlrbru) from e120ipd');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.codfil = e120ipd.codfil and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.numped = e120ipd.numped');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e075pro on e075pro.codemp = e120ipd.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codpro = e120ipd.codpro');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e120ipd.tnspro in (''90100'',''90106'',''90160'') and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.sitped in (1,2,3) and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.codcli = e085cli.codcli and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codagc = ''ESTOF'') as TotPedAbeEstof,');
          DmOra.ComparativoComprasCli.SQL.Add('(select sum(e120ipd.vlrbru) from e120ipd');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e120ped on e120ped.codemp = e120ipd.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.codfil = e120ipd.codfil and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.numped = e120ipd.numped');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e075pro on e075pro.codemp = e120ipd.codemp and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codpro = e120ipd.codpro');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e120ipd.tnspro in (''90100'',''90106'',''90160'') and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.sitped in (1,2,3) and');
          DmOra.ComparativoComprasCli.SQL.Add('e120ped.codcli = e085cli.codcli and');
          DmOra.ComparativoComprasCli.SQL.Add('e075pro.codagc = ''COLCH'') as TotPedAbeColch');
          DmOra.ComparativoComprasCli.SQL.Add('from e085cli');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e085hcl on e085hcl.codcli = e085cli.codcli');
          DmOra.ComparativoComprasCli.SQL.Add('inner join e090rep on e090rep.codrep = e085hcl.codrep');
          DmOra.ComparativoComprasCli.SQL.Add('where');
          DmOra.ComparativoComprasCli.SQL.Add('e085hcl.codemp = 1 and');
          DmOra.ComparativoComprasCli.SQL.Add('e085hcl.codfil = 1');

          if trim(EdCodCli.Text) <> '' then
             begin//3
               DmOra.ComparativoComprasCli.SQL.Add(' and e085cli.codcli = :CodCli');
               DmOra.ComparativoComprasCli.Parameters.ParamByName('CodCli').Value := StrToInt(trim(EdCodCli.Text));
             end;//3

          if trim(EdCodRep.Text) <> '' then
             begin//4
               DmOra.ComparativoComprasCli.SQL.Add(' and e085hcl.codrep = :CodRep');
               DmOra.ComparativoComprasCli.Parameters.ParamByName('CodRep').Value := StrToInt(trim(EdCodRep.Text));
             end;//4

          if RbAbaixo.Checked = true then
             begin//5
               DmOra.ComparativoComprasCli.SQL.Add(' and ((select sum(e140ipv.vlrbru) from e140ipv');
               DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
               DmOra.ComparativoComprasCli.SQL.Add('where');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
               DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatIniP and :DatFimP) > (select sum(e140ipv.vlrbru) from e140ipv');
               DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
               DmOra.ComparativoComprasCli.SQL.Add('where');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
               DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatIniS and :DatFimS))');
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatIniP').Value := StrToDate(vaDatIniAnt);
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatFimP').Value := StrToDate(vaDatFimAnt);
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatIniS').Value := EdDatIniAtu.Date;
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatFimS').Value := EdDatFimAtu.Date;
             end//5
          else
          if RbAcima.Checked = true then
             begin//6
               DmOra.ComparativoComprasCli.SQL.Add(' and ((select sum(e140ipv.vlrbru) from e140ipv');
               DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
               DmOra.ComparativoComprasCli.SQL.Add('where');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.sitnfv = ''2'' and');
               DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatIniP and :DatFimP) < (select sum(e140ipv.vlrbru) from e140ipv');
               DmOra.ComparativoComprasCli.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codfil = e140ipv.codfil and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codsnf = e140ipv.codsnf and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.numnfv = e140ipv.numnfv');
               DmOra.ComparativoComprasCli.SQL.Add('where');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.codcli = e085cli.codcli and');
               DmOra.ComparativoComprasCli.SQL.Add('e140ipv.tnspro not in (''6949'',''5949'',''6949R'',''5949R'',''6910'',''5910'',''6910R'',''5910R'',''5916'',''6916'',''5916R'',''6916R'') and');
               DmOra.ComparativoComprasCli.SQL.Add('e140nfv.datemi between :DatIniS and :DatFimS))');
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatIniP').Value := StrToDate(vaDatIniAnt);
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatFimP').Value := StrToDate(vaDatFimAnt);
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatIniS').Value := EdDatIniAtu.Date;
               DmOra.ComparativoComprasCli.Parameters.ParamByName('DatFimS').Value := EdDatFimAtu.Date;
             end;//6

            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatEstofIAnt').Value := StrToDate(vaDatIniAnt);
            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatEstofFAnt').Value := StrToDate(vaDatFimAnt);
            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatEstofIAtu').Value := EdDatIniAtu.Date;
            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatEstofFAtu').Value := EdDatFimAtu.Date;

            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatColchIAnt').Value := StrToDate(vaDatIniAnt);
            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatColchFAnt').Value := StrToDate(vaDatFimAnt);
            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatColchIAtu').Value := EdDatIniAtu.Date;
            DmOra.ComparativoComprasCli.Parameters.ParamByName('DatColchFAtu').Value := EdDatFimAtu.Date;
            DmOra.ComparativoComprasCli.Open;
       end;//1
end;

procedure TFComparaComprasClientes.BitBtn2Click(Sender: TObject);
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
    FConsGeralNfEnt.vaCampo := 'EdCodCli';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FComparaComprasClientes';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodCli;
end;

procedure TFComparaComprasClientes.BitBtn3Click(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e090rep.codrep,e090rep.nomrep,e090rep.aperep,e090rep.cgccpf,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +'e090rep.cidrep,e090rep.sigufs,e090rep.endrep,e090rep.bairep';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e090rep';
    FConsGeralNfEnt.vbWhere := false;
    FConsGeralNfEnt.vaCampo := 'EdCodRep';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FComparaComprasClientes';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := EdCodRep;
end;

procedure TFComparaComprasClientes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'Imagem' then
    begin
        DBGrid1.Canvas.FillRect(Rect);
        // Desenha o Quadrado
        //  ImageList1.Draw(DBGrid2.Canvas,Rect.Left+10,Rect.Top+1,0);

        // Desenha o check sobre o quadrado
       if (DmOra.ComparativoComprasCliTOTESTOFATU.AsCurrency +
           DmOra.ComparativoComprasCliTOTCOLCHATU.AsCurrency) <
           (DmOra.ComparativoComprasCliTOTCOLCHANT.AsCurrency +
            DmOra.ComparativoComprasCliTOTESTOFANT.AsCurrency) then
            begin//1

              ImageList1.Draw(DBGrid1.Canvas,Rect.Left+10,Rect.Top+1,0);

            end;//1

    end;
end;

procedure TFComparaComprasClientes.EdDifTotalChange(Sender: TObject);
begin
    if EdDifTotal.Value < 0 then
       EdDifTotal.Font.Color := clRed
    else
       EdDifTotal.Font.Color := clGreen;
end;

procedure TFComparaComprasClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFComparaComprasClientes.Label10Click(Sender: TObject);
begin
if (EdDatIniAtu.Date <> 0) and (EdDatFimAtu.Date <> 0) then
  begin
    DmOra.ProdComparativoComprasCli.Close;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatIni').Value := StrToDate(vaDatIniAnt);
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatFim').Value := StrToDate(vaDatFimAnt);
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODCLI').Value := DmOra.ComparativoComprasCliCODCLI.AsInteger;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODAGP').Value := 'ESTOF';
    DmOra.ProdComparativoComprasCli.Open;

    FProdutosComparaComprasClientes := TFProdutosComparaComprasClientes.Create(Self);
    FProdutosComparaComprasClientes.ShowModal;
    FreeAndNil(FProdutosComparaComprasClientes);
  end;

end;

procedure TFComparaComprasClientes.Label11Click(Sender: TObject);
begin
if (EdDatIniAtu.Date <> 0) and (EdDatFimAtu.Date <> 0) then
  begin
    DmOra.ProdComparativoComprasCli.Close;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatIni').Value := StrToDate(vaDatIniAnt);
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatFim').Value := StrToDate(vaDatFimAnt);
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODCLI').Value := DmOra.ComparativoComprasCliCODCLI.AsInteger;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODAGP').Value := 'COLCH';
    DmOra.ProdComparativoComprasCli.Open;

    FProdutosComparaComprasClientes := TFProdutosComparaComprasClientes.Create(Self);
    FProdutosComparaComprasClientes.ShowModal;
    FreeAndNil(FProdutosComparaComprasClientes);
  end;
end;

procedure TFComparaComprasClientes.Label12Click(Sender: TObject);
begin
if (EdDatIniAtu.Date <> 0) and (EdDatFimAtu.Date <> 0) then
  begin
    DmOra.ProdComparativoComprasCli.Close;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatIni').Value := EdDatIniAtu.Date;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatFim').Value := EdDatFimAtu.Date;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODCLI').Value := DmOra.ComparativoComprasCliCODCLI.AsInteger;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODAGP').Value := 'ESTOF';
    DmOra.ProdComparativoComprasCli.Open;

    FProdutosComparaComprasClientes := TFProdutosComparaComprasClientes.Create(Self);
    FProdutosComparaComprasClientes.ShowModal;
    FreeAndNil(FProdutosComparaComprasClientes);
  end;
end;

procedure TFComparaComprasClientes.Label13Click(Sender: TObject);
begin
if (EdDatIniAtu.Date <> 0) and (EdDatFimAtu.Date <> 0) then
  begin
   DmOra.ProdComparativoComprasCli.Close;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatIni').Value := EdDatIniAtu.Date;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('DatFim').Value := EdDatFimAtu.Date;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODCLI').Value := DmOra.ComparativoComprasCliCODCLI.AsInteger;
    DmOra.ProdComparativoComprasCli.Parameters.ParamByName('CODAGP').Value := 'COLCH';
    DmOra.ProdComparativoComprasCli.Open;

    FProdutosComparaComprasClientes := TFProdutosComparaComprasClientes.Create(Self);
    FProdutosComparaComprasClientes.ShowModal;
    FreeAndNil(FProdutosComparaComprasClientes);
  end;
end;

end.
