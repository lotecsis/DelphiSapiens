unit UAtualizaEstMin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, DateUtils, Buttons;

type
  TFAtualizaEstMin = class(TForm)
    Label1: TLabel;
    edtQtdDias: TCurrencyEdit;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnAtualizar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edtQtdDiasExit(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtualizaEstMin: TFAtualizaEstMin;

implementation

uses UDm3;

{$R *.dfm}

procedure TFAtualizaEstMin.btnAtualizarClick(Sender: TObject);
var vnConsumo, vnMedia, vnQtdMeses : Double;
begin
  if edtDatIni.Date = 0 then
     begin
       Application.MessageBox('Informe a data inicial','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatIni;
       Abort;
     end;
  if edtDatFim.Date = 0 then
     begin
       Application.MessageBox('Informe a data final','Aviso',MB_ICONWARNING+MB_OK);
       ActiveControl := edtDatFim;
       Abort;
     end;

  vnConsumo := 0;
  vnQtdMeses := edtQtdDias.Value / 30;

  Dm3.ClientMateriaPrimaMeiaCons.First;
  while not Dm3.ClientMateriaPrimaMeiaCons.Eof do
     begin
       Dm3.ConsumoMP.Close;
       Dm3.ConsumoMP.Parameters.ParamByName('datini').Value := edtDatIni.Date;
       Dm3.ConsumoMP.Parameters.ParamByName('datfim').Value := edtDatFim.Date;
       Dm3.ConsumoMP.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
       Dm3.ConsumoMP.Open;

       vnConsumo := Dm3.ConsumoMPCONSUMO.AsFloat;

       if vnConsumo > 0 then
          begin
            vnMedia := vnConsumo / vnQtdMeses;
          end
       else
          begin
            vnMedia := 0;
          end;

       Dm3.ConsSql.Close;
       Dm3.ConsSql.SQL.Clear;
       Dm3.ConsSql.SQL.Add('update e210est set estmin = :estmin');
       Dm3.ConsSql.SQL.Add(' where');
       Dm3.ConsSql.SQL.Add(' codemp = :codemp and');
       Dm3.ConsSql.SQL.Add(' codpro = :codpro and');
       Dm3.ConsSql.SQL.Add(' codder = :codder');
       Dm3.ConsSql.Parameters.ParamByName('estmin').Value := vnMedia;
       Dm3.ConsSql.Parameters.ParamByName('codemp').Value := 1;
       Dm3.ConsSql.Parameters.ParamByName('codpro').Value := Dm3.ClientMateriaPrimaMeiaConsCODPRO.Value;
       Dm3.ConsSql.Parameters.ParamByName('codder').Value := Dm3.ClientMateriaPrimaMeiaConsCODDER.value;
       Dm3.ConsSql.ExecSQL;

       Dm3.ClientMateriaPrimaMeiaCons.Next;
     end;
  
  Close;
end;

procedure TFAtualizaEstMin.edtQtdDiasExit(Sender: TObject);
begin
  edtDatIni.Date := IncDay(Date,-edtQtdDias.AsInteger);
  edtDatFim.Date := Date;
end;

procedure TFAtualizaEstMin.FormShow(Sender: TObject);
begin
  edtQtdDias.Value := 90;
  edtDatIni.Date := IncDay(Date,-edtQtdDias.AsInteger);
  edtDatFim.Date := Date;
end;

end.
