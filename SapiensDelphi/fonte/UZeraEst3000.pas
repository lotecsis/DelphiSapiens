unit UZeraEst3000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFZeraEst3000 = class(TForm)
    ConsEst: TADOQuery;
    dbg1: TDBGrid;
    btnProcessar: TBitBtn;
    btnMostrar: TBitBtn;
    dsConsEst: TDataSource;
    SapSid: TIdHTTP;
    ConsEstCopia: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField1: TFMTBCDField;
    StringField4: TStringField;
    FMTBCDField2: TFMTBCDField;
    StringField5: TStringField;
    ConsEstCODEMP: TIntegerField;
    ConsEstCODPRO: TStringField;
    ConsEstCODDER: TStringField;
    ConsEstCODDEP: TStringField;
    ConsEstQTDEST: TFMTBCDField;
    btn1: TBitBtn;
    procedure btnMostrarClick(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FZeraEst3000: TFZeraEst3000;

implementation

uses UDmOra, UDm2;

{$R *.dfm}

procedure TFZeraEst3000.btn1Click(Sender: TObject);
VAR vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaCodPro,vaCodDer,vaCodTns,vaCodDep,vaQtdMov,vaVlrMov,vaNumDoc : string;
    vnQtdEst : double;
begin
  xPostQuery := TStringList.Create;

    Dm2.ADOUsuT000sis.Close;
    Dm2.ADOUsuT000sis.Open;
    vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
    vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

    xPostQuery.Add('ACAO=EXESENHA');
    xPostQuery.Add('&NOMUSU=sapienssid');
    xPostQuery.Add('&SENUSU=sapienssid');

    // Executar ação de autenticação no Sapiens SID
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    // Verificar se a ação executou com sucesso
    if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
        raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
    else
        vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

    //loga na filial
    xPostQuery.Clear;
    xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
    xPostQuery.Add('&CodEmp='+'1');
    xPostQuery.Add('&CodFil='+'1');
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    ConsEst.First;
    while not ConsEst.Eof do
      begin

               vaCodPro := ConsEstCODPRO.AsString;
                vaCodDer := ConsEstCODDER.AsString;
                vaCodTns := '90251';
                vaCodDep := '3000';
                vaQtdMov :=  FloatToStr(ConsEstQTDEST.AsFloat);
                //vaVlrMov := '1';

                xPostQuery.Clear;
                xPostQuery.Add('ACAO=SID.Est.Movimentar');
                xPostQuery.Add('&CodPro='+vaCodPro);
                xPostQuery.Add('&CodDer='+vaCodDer);
                xPostQuery.Add('&CodTns='+vaCodTns);
                xPostQuery.Add('&CodDep='+vaCodDep);
                xPostQuery.Add('&QtdMov='+vaQtdMov);
                xPostQuery.Add('&VlrMov='+vaVlrMov);

                // Executar ação  movimentar produtos
                xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

                // Verificar retorno
                if (xRetorno = '0') then
                   begin
                      raise Exception.Create(xRetorno);
                   end
                else
                   begin

                   end;

         ConsEst.Next;
      end;

      Application.MessageBox('Movimentação concluida com sucesso!','Aviso', MB_ICONWARNING+MB_OK);

end;

procedure TFZeraEst3000.btnMostrarClick(Sender: TObject);
begin
  ConsEst.Close;
  ConsEst.Open;
end;

procedure TFZeraEst3000.btnProcessarClick(Sender: TObject);
VAR vA_URL, vA_BasQry, xRetorno : String;
    xPostQuery		              : TStringList;
    vaCodPro,vaCodDer,vaCodTns,vaCodDep,vaQtdMov,vaVlrMov,vaNumDoc : string;
    vnQtdEst : double;
begin
  xPostQuery := TStringList.Create;

    Dm2.ADOUsuT000sis.Close;
    Dm2.ADOUsuT000sis.Open;
    vA_URL := Dm2.ADOUsuT000sisUSU_URLSRV.Value;
    vA_BasQry := Dm2.ADOUsuT000sisUSU_BASQRY.Value;

    xPostQuery.Add('ACAO=EXESENHA');
    xPostQuery.Add('&NOMUSU=sapienssid');
    xPostQuery.Add('&SENUSU=sapienssid');

    // Executar ação de autenticação no Sapiens SID
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    // Verificar se a ação executou com sucesso
    if (StrToIntDef(Copy(xRetorno, 1, 5), 0)) = 0 then
        raise Exception.Create('ERRO - Conexão SID não foi estabelecida: ' + xRetorno)
    else
        vA_URL := vA_URL + '&USER=sapienssid&CONNECTION=' + xRetorno;

    //loga na filial
    xPostQuery.Clear;
    xPostQuery.Add('ACAO=SID.Srv.AltEmpFil');
    xPostQuery.Add('&CodEmp='+'1');
    xPostQuery.Add('&CodFil='+'1');
    xRetorno := Trim(SapSID.Post(vA_URL, xPostQuery));

    ConsEst.First;
    while not ConsEst.Eof do
      begin
        { if ConsEstQTDPRV.AsFloat > ConsEstQTDEST.AsFloat then
            begin
              vaCodPro := ConsEstCODPRO.AsString;
                vaCodDer := ConsEstCODDER.AsString;
                vaCodTns := '90204';
                vaCodDep := '3000';
                vaQtdMov :=  FloatToStr(ConsEstQTDPRV.AsFloat- ConsEstQTDEST.AsFloat);
                vaVlrMov := '1';

                xPostQuery.Clear;
                xPostQuery.Add('ACAO=SID.Est.Movimentar');
                xPostQuery.Add('&CodPro='+vaCodPro);
                xPostQuery.Add('&CodDer='+vaCodDer);
                xPostQuery.Add('&CodTns='+vaCodTns);
                xPostQuery.Add('&CodDep='+vaCodDep);
                xPostQuery.Add('&QtdMov='+vaQtdMov);
                xPostQuery.Add('&VlrMov='+vaVlrMov);

                // Executar ação  movimentar produtos
                xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

                // Verificar retorno
                if (xRetorno = '0') then
                   begin
                      raise Exception.Create(xRetorno);
                   end
                else
                   begin

                   end;
            end; }



          {if ConsEstQTDPRV.AsFloat <= 0 then
             begin
                vaCodPro := ConsEstCODPRO.AsString;
                vaCodDer := ' ';
                vaCodTns := '90251';
                vaCodDep := '3000';
                vaQtdMov := FloatToStr(ConsEstQTDEST.AsFloat);

                xPostQuery.Clear;
                xPostQuery.Add('ACAO=SID.Est.Movimentar');
                xPostQuery.Add('&CodPro='+vaCodPro);
                xPostQuery.Add('&CodDer='+vaCodDer);
                xPostQuery.Add('&CodTns='+vaCodTns);
                xPostQuery.Add('&CodDep='+vaCodDep);
                xPostQuery.Add('&QtdMov='+vaQtdMov);
                //xPostQuery.Add('&VlrMov='+vaVlrMov);

                // Executar ação  movimentar produtos
                xRetorno := Trim(SapSid.Post(vA_URL, xPostQuery));

                // Verificar retorno
                if (xRetorno = '0') then
                   begin
                      raise Exception.Create(xRetorno);
                   end
                else
                   begin

                   end;
             end; }
         ConsEst.Next;
      end;

      Application.MessageBox('Movimentação concluida com sucesso!','Aviso', MB_ICONWARNING+MB_OK);

end;

end.
