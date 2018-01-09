unit UIntegracaoSerasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, ComCtrls;

type
  TFIntegracaoSerasa = class(TForm)
    btnConsultar: TBitBtn;
    IdHTTP: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    reResp: TRichEdit;
    btn1: TBitBtn;
    btnListar: TBitBtn;
    edtRemetente: TEdit;
    Label1: TLabel;
    btn2: TBitBtn;
    memoClientes: TMemo;
    Label2: TLabel;
    edtDestinatario: TEdit;
    procedure btnConsultarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIntegracaoSerasa: TFIntegracaoSerasa;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFIntegracaoSerasa.btn1Click(Sender: TObject);
var
 vaEnvio : TStringList;
 vaRetorno : TStringStream;
begin
  vaEnvio := TStringList.Create;
  try
    vaRetorno := TStringStream.Create('');

    vaEnvio.Values['&nome']  := 'douglas lira';
    vaEnvio.Values['&n1']  := '5';
    vaEnvio.Values['&n2']  := '6';
    vaEnvio.Values['&nomeremetente']  := 'DOUGLAS';
    vaEnvio.Values['&emailremetente']  := edtRemetente.Text;
    vaEnvio.Values['&emaildestinatario']  := edtDestinatario.Text;
    vaEnvio.Values['&assunto']  := 'ENVIO DE EMIAL PHP ';
    vaEnvio.Values['&mensagem']  := 'TESTE DE ENVIO DE EMAIL PELO DELPHI USANDO PHP';

   // IdHTTP.Request.ContentType := 'application / x-www-form-urlencoded ';
    IdHTTP.Post('http://www.liderlar.com.br/EnvioEmailDelphi/EnviaEmail.php?',vaEnvio,vaRetorno);

    { Exemplo de uso do response : carregar o conteúdo num RichEdit : }
    vaRetorno.Position := 0;
    reResp.Lines.LoadFromStream(vaRetorno);
    //reResp.Lines.Add(lResponse.DataString);
  finally
    vaEnvio.free;
    vaRetorno.Free;
  end;

end;

procedure TFIntegracaoSerasa.btnListarClick(Sender: TObject);
var
 vaEnvio : TStringList;
 vaStringDados : TStringList;
 vaRetorno : TStringStream;
begin
  vaEnvio := TStringList.Create;
  vaStringDados := TStringList.Create;
  try

    vaRetorno := TStringStream.Create('');

    {vaStringDados.Add('B49C      000000003000125JC     FI0000000            N99SINIAN                                000000000000         ');
    vaStringDados.Add('000000000000000          0000      0000000000000000                         00                    000000000000       ');
    vaStringDados.Add('                                                         000000000000000                 0                                00000000000');
    vaStringDados.Add('00000000000000000000000000000000   P002IP20QPR                                                                           ');
    vaStringDados.Add('                             T999                                                                                                               ');}

    //vaEnvio.Values['&stringDados']  := vaStringDados.Text;
      vaEnvio.Values['l1'] := 'B49C      073192817000182JC     FI0000000            S99SINIAN                                000000000000N        ';
      vaEnvio.Values['l2'] := '000000000000000          1000      0000000000000000                         00                    000000000000       ';
      vaEnvio.Values['l3'] := '                                                         000000000000000                 0                                00000000000';
      vaEnvio.Values['l4'] := '00000000000000000000000000000000   P002IP20QPR                                                                           ';
      vaEnvio.Values['l5'] := '                             T999                                                                                                               ';

    IdHTTP.Post('http://www.liderlar.com.br/IntegracaoSerasa/ListaRelato.php?',vaEnvio,vaRetorno);

    { Exemplo de uso do response : carregar o conteúdo num RichEdit : }
    vaRetorno.Position := 0;
    reResp.Lines.LoadFromStream(vaRetorno);
    //reResp.Lines.Add(lResponse.DataString);
  finally
    vaEnvio.free;
    vaRetorno.Free;
  end;


end;

procedure TFIntegracaoSerasa.btn2Click(Sender: TObject);
var
  Arq: TextFile;
  Texto: string;
  Txt: TStringList;
  TextoPronto : string;
begin
  Txt := TStringList.Create; // cria a stringlist
  Txt.StrictDelimiter := True; // indica que o delimitador é somente aquele definido abaixo
  Txt.Delimiter := ';'; // caractere delimitador de campos

  try
    Screen.Cursor := crHourGlass;
    AssignFile(Arq,'D:\Lista SERASA\ARARUNA\ARARUNA.csv');
    Reset(Arq);
    if not EOF(Arq) then
      repeat
        ReadLn(Arq, Texto);
        Txt.DelimitedText := Texto; // desmembra o texto

        if Txt[0] <> 'Número do CNPJ' then
           begin

              DmOra.ConsSql.Close;
              DmOra.ConsSql.SQL.Clear;
              DmOra.ConsSql.SQL.Add('SELECT USU_TE085SERA.* FROM USU_TE085SERA WHERE USU_TE085SERA.USU_CGCCPF = :CGCCPF');
              DmOra.ConsSql.Parameters.ParamByName('CGCCPF').Value := Txt[0];
              DmOra.ConsSql.Open;
              if DmOra.ConsSql.IsEmpty then
                 begin
                   DmOra.CadUSU_TE085SERA.Open;
                   DmOra.CadUSU_TE085SERA.Insert;
                   DmOra.CadUSU_TE085SERAUSU_NOMCLI.Value := Txt[1];
                   DmOra.CadUSU_TE085SERAUSU_ENDCLI.Value := Txt[11];
                   DmOra.CadUSU_TE085SERAUSU_CEPCLI.Value := StrToInt(Txt[10]);
                   DmOra.CadUSU_TE085SERAUSU_BAICLI.Value := Txt[7];
                   DmOra.CadUSU_TE085SERAUSU_CIDCLI.Value := Txt[8];
                   DmOra.CadUSU_TE085SERAUSU_SIGUFS.Value := Txt[9];
                   DmOra.CadUSU_TE085SERAUSU_FONCLI.Value := '('+Txt[12]+')'+' '+Txt[13];
                   DmOra.CadUSU_TE085SERAUSU_FONCL2.Value := '('+Txt[14]+')'+' '+Txt[15];
                   DmOra.CadUSU_TE085SERAUSU_FONCL3.Value := '('+Txt[16]+')'+' '+Txt[17];
                   DmOra.CadUSU_TE085SERAUSU_DATIMP.Value := date;
                   DmOra.CadUSU_TE085SERAUSU_CGCCPF.Value := StrToFloat(Txt[0]);
                   DmOra.CadUSU_TE085SERAUSU_EMANFE.Value := '';
                   DmOra.CadUSU_TE085SERAUSU_CNAI.Value := Txt[18];

                    DmOra.ConsSql.Close;
                    DmOra.ConsSql.SQL.Clear;
                    DmOra.ConsSql.SQL.Add('SELECT MAX(USU_TE085SERA.USU_IDCLI) AS ULTIMO FROM USU_TE085SERA');
                    DmOra.ConsSql.Open;
                    if not DmOra.ConsSql.IsEmpty then
                       DmOra.CadUSU_TE085SERAUSU_IDCLI.Value := DmOra.ConsSql.FieldByName('ULTIMO').AsInteger + 1
                    else
                       DmOra.CadUSU_TE085SERAUSU_IDCLI.Value := 1;


                    DmOra.ConsSql.Close;
                    DmOra.ConsSql.SQL.Clear;
                    DmOra.ConsSql.SQL.Add('SELECT E085CLI.CODCLI,E085CLI.NOMCLI,E085CLI.DATCAD');
                    DmOra.ConsSql.SQL.Add('  FROM E085CLI');
                    DmOra.ConsSql.SQL.Add('   WHERE E085CLI.CGCCPF = :CGCCPF');
                    DmOra.ConsSql.Parameters.ParamByName('CGCCPF').Value := DmOra.CadUSU_TE085SERAUSU_CGCCPF.Value;
                    DmOra.ConsSql.Open;
                    if DmOra.ConsSql.IsEmpty then
                       begin
                         DmOra.CadUSU_TE085SERAUSU_CODCLI.Value := 0;
                         DmOra.CadUSU_TE085SERAUSU_DATCAD.Value := 0;
                       end
                    else
                      begin
                        DmOra.CadUSU_TE085SERAUSU_CODCLI.Value := DmOra.ConsSql.FieldByName('CODCLI').Value;
                        DmOra.CadUSU_TE085SERAUSU_DATCAD.Value := DmOra.ConsSql.FieldByName('DATCAD').Value;
                      end;


                   DmOra.CadUSU_TE085SERA.Post;

                 end;
             TextoPronto := '';
             TextoPronto := Txt[0];
             TextoPronto := TextoPronto + ' - '+Txt[1];
             TextoPronto := TextoPronto + ' - '+Txt[2];
             TextoPronto := TextoPronto + ' - '+Txt[3];
             memoClientes.Lines.Add(TextoPronto);
           end;

      until EOF(Arq);
  finally
    Closefile(Arq); //fecha arquivo CSV
    Screen.Cursor := crDefault;
  end;

  FreeAndNil(Txt);
end;

{JOSÉ LUIS CAMARGO

é como se cada um desses nomes fossem um str[].
Resolvi isso colocando depois do

str.delimiter:= ';';

linha:= StringReplace(linha,' ','ÿ',[rfReplaceAll]);

e ai continua como estava:

str.DelimitedText := linha;
etc...

Assim não há problema quanto a srt[] diferentes a cada linha dependendo de quantas palavras formam o nome da pessoa.
Se quiser no final retornar os espaços é só fazer o inverso do que foi feito acima:

linha:= StringReplace(linha,' ÿ',' ',[rfReplaceAll]);

obs: Coloquei esta letra (ÿ) pois tem que ser uma que não estará presente em nenhuma palavra, pra não correr o risco de na hora de tirar o sistema substituir outras letras do nome da pessoa

Abraço. }


procedure TFIntegracaoSerasa.btnConsultarClick(Sender: TObject);
var
 vaEnvio : TStringList;
 lResponse : TStringStream;
begin
  vaEnvio := TStringList.Create;
  try

   lResponse := TStringStream.Create('');


   vaEnvio.Add('B49C      000000003000125JC     FI0000000            N99SINIAN                                000000000000         ');
   vaEnvio.Add('000000000000000          0000      0000000000000000                         00                    000000000000       ');
   vaEnvio.Add('                                                         000000000000000                 0                                00000000000');
   vaEnvio.Add('00000000000000000000000000000000   P002IP20QPR                                                                           ');
   vaEnvio.Add('                             T999                                                                                                               ');


    //IdSSLIOHandlerSocketOpenSSL1.Connected;
    IdHTTP.Request.ContentType := 'application / x-www-form-urlencoded ';
    IdHTTP.Post('https://mqlinuxext.serasa.com.br/Homologa/consultahttps?p=3943928810203040',vaEnvio,lResponse);

    { Exemplo de uso do response : carregar o conteúdo num RichEdit : }
    lResponse.Position := 0;
    reResp.Lines.LoadFromStream(lResponse);
  finally
    vaEnvio.free;
  end;
end;

end.
