unit UImprimiReciboAdtFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons;

type
  TFImprimiReciboAdtFunc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdNumCad: TCurrencyEdit;
    EdNumAdt: TCurrencyEdit;
    BImprimir: TBitBtn;
    procedure BImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Dias : array of LongWord; // Variável para armazenar os dias de destaque
    function extenso(valor: real): string;
  public
    { Public declarations }
  end;

var
  FImprimiReciboAdtFunc: TFImprimiReciboAdtFunc;

implementation

uses UDmRave, UGerenciaFuncionario;

{$R *.dfm}

Const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
'Seis', 'Sete', 'Oito', 'Nove');
Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
'Cinquenta', 'Sessenta', 'Setenta',
'Oitenta', 'Noventa');
Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
'Quatrocentos', 'Quinhentos', 'Seiscentos',
'Setecentos', 'Oitocentos', 'Novecentos');
MoedaSigular = 'Real';
MoedaPlural = 'Reais';
CentSingular = 'Centavo';
CentPlural = 'Centavos';
Zero = 'Zero';

function TFImprimiReciboAdtFunc.extenso(valor: real): string;
var Texto,Milhar,Centena,Centavos,msg: string;
////////////////////////////////fucao auxiliar extenso////////////////////////////////
  function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
    begin
      if Expressao then
      Result:=CasoVerdadeiro
      else
      Result:=CasoFalso;
  end;
////////////////////////////funcao auxiliar extenso/////////////////////////
  function MiniExtenso (trio: string): string;
    var
      Unidade, Dezena, Centena: string;
    begin
      Unidade:='';
      Dezena:='';
      Centena:='';
      if (trio[2]='1') and (trio[3]<>'0') then
        begin
          Unidade:=Dez[strtoint(trio[3])];
          Dezena:='';
        end
      else
        begin
          if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
          if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
      end;
      if (trio[1]='1') and (Unidade='') and (Dezena='') then
        Centena:='Cem'
      else
        if trio[1]<>'0' then
          Centena:=Centenas[strtoint(trio[1])]
        else Centena:='';
      Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
      + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
  end;

begin
  if (valor>999999.99) or (valor<0) then
    begin
      msg:='O valor está fora do intervalo permitido.';
      msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
      msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
      showmessage(msg);
      Result:='';
      exit;
    end;
  if valor=0 then
    begin
      Result:='';
      Exit;
  end;
  Texto:=formatfloat('000000.00',valor);
  Milhar:=MiniExtenso(Copy(Texto,1,3));
  Centena:=MiniExtenso(Copy(Texto,4,3));
  Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
  Result:=Milhar;
  if Milhar<>'' then
    begin
      if copy(texto,4,3)='000' then
        Result:=Result+' Mil Reais'
      else
        Result:=Result+' Mil, ';
  end;
 // if (((copy(texto,4,2)='00') and (Milhar<>'') and (copy(texto,6,1)<>'0')))or (centavos='') and (milhar<>'')  then
    if (((copy(texto,4,2)='00') and (Milhar<>'') and (copy(texto,6,1)<>'0')))or (centavos='00') and (milhar<>'') then
    Result:=Result+' e ';
  if (Milhar+Centena <>'') then
    Result:=Result+Centena;
  if (Milhar='') and (copy(texto,4,3)='001') then
    Result:=Result+' Real'
  else
  if (copy(texto,4,3)<>'000') then
    Result:=Result+' Reais';
  if Centavos='' then
    begin
      Result:=Result+'.';
      Exit;
  end
  else
    begin
      if Milhar+Centena='' then
        Result:=Centavos
      else
        Result:=Result+', e '+Centavos;
  end;
  if (copy(texto,8,2)='01') and (Centavos<>'') then
      Result:=Result+' Centavo.'
  else
      Result:=Result+' Centavos.';

end;

procedure TFImprimiReciboAdtFunc.FormShow(Sender: TObject);
begin
    if (EdNumCad.Value <> 0 ) and (EdNumAdt.Value <> 0) then
       begin
         BImprimir.Click;
         Close;
       end;
end;

procedure TFImprimiReciboAdtFunc.BImprimirClick(Sender: TObject);
var vnQtdAdt,vnSeqPar : integer;
    vaDataExt,vaLocaData : string;
begin
    DmRave.ConsAdtFuncRecibo.Close;
    DmRave.ConsAdtFuncRecibo.Parameters.ParamByName('NUMCAD').Value := EdNumCad.Value;
    DmRave.ConsAdtFuncRecibo.Parameters.ParamByName('NUMADT').Value := EdNumAdt.Value;
    DmRave.ConsAdtFuncRecibo.Open;
    vnQtdAdt := 0;
    DmRave.ConsAdtFuncRecibo.First;
    while not DmRave.ConsAdtFuncRecibo.Eof do //conta a quantidade de parcelas
       begin
         vnQtdAdt := vnQtdAdt + 1;
         DmRave.ConsAdtFuncRecibo.Next;
       end;
    DmRave.ConsAdtFuncRecibo.First;

   DmRave.ClientReciboAdt.First;
   while not DmRave.ClientReciboAdt.Eof do //limpa o client
     begin
       DmRave.ClientReciboAdt.Delete;
     end;



   while not DmRave.ConsAdtFuncRecibo.Eof do
      begin//1
        DmRave.ClientReciboAdt.Open;
        DmRave.ClientReciboAdt.Insert;
        DmRave.ClientReciboAdtVlrPar.Value := DmRave.ConsAdtFuncReciboUSU_VLRPAR.Value;
        DmRave.ClientReciboAdtQtdPar.Value := vnQtdAdt;
        DmRave.ClientReciboAdtSeqPar.Value := DmRave.ConsAdtFuncReciboUSU_SEQADT.Value;
        DmRave.ClientReciboAdtVlrExt.Value := extenso(DmRave.ConsAdtFuncReciboUSU_VLRPAR.AsFloat);
        DmRave.ClientReciboAdt.Post;

        DmRave.ConsAdtFuncRecibo.Next;
      end;//1

      DmRave.ClientReciboAdt.IndexFieldNames := 'SEQPAR';

      vaDataExt := FormatDateTime('dddddd',date);
      vaLocaData := 'Araruna - PR , '+vaDataExt;


      DmRave.RvReciboAdt.SetParam('LOCAL_DATA',vaLocaData);
      DmRave.RvReciboAdt.SetParam('NOMFUN',FGerenciaFuncionario.ConsUsu_TRhFunUSU_NOMFUN.Value);
      DmRave.RvReciboAdt.Execute;
      Close;

end;

end.
