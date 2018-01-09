unit URelatoriosConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils;

type
  TFRelatoriosConvenio = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    CbMes: TComboBox;
    EdAno: TEdit;
    BDescontos: TSpeedButton;
    BAnalizar: TSpeedButton;
    BAdiantamentos: TSpeedButton;
    Label1: TLabel;
    Label4: TLabel;
    BAdtTrazerDinheiro: TBitBtn;
    BAdtDescFolha: TBitBtn;
    procedure BDescontosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BAnalizarClick(Sender: TObject);
    procedure BAdiantamentosClick(Sender: TObject);
    procedure BAdtTrazerDinheiroClick(Sender: TObject);
    procedure BAdtDescFolhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatoriosConvenio: TFRelatoriosConvenio;

implementation

uses UDmRave;

{$R *.dfm}

procedure TFRelatoriosConvenio.BAdiantamentosClick(Sender: TObject);
begin
    if (trim(CbMes.Text) <> '') and (trim(EdAno.Text) <> '') then
   begin
      DmRave.ConsUsu_TSerMovAdiantamentos.Close;
      DmRave.ConsUsu_TSerMovAdiantamentos.Parameters.ParamByName('MES').Value := CbMes.ItemIndex;
      DmRave.ConsUsu_TSerMovAdiantamentos.Parameters.ParamByName('ANO').Value := StrToInt(TRIM(EdAno.Text));
      DmRave.ConsUsu_TSerMovAdiantamentos.Open;

      DmRave.RvConvenio_Adiantamentos.SetParam('MES',CbMes.Text);
      DmRave.RvConvenio_Adiantamentos.SetParam('ANO',EdAno.Text);
      DmRave.RvConvenio_Adiantamentos.Execute;
   end;
end;

procedure TFRelatoriosConvenio.BAdtDescFolhaClick(Sender: TObject);
begin
  DmRave.ConsAdtDescFolhaMes.Close;
  DmRave.ConsAdtDescFolhaMes.Parameters.ParamByName('DATINI').Value := '01/01/1990';
  DmRave.ConsAdtDescFolhaMes.Parameters.ParamByName('DATFIM').Value := EndOfTheMonth(EncodeDate(StrToInt(EdAno.Text),CbMes.ItemIndex,01));
  DmRave.ConsAdtDescFolhaMes.Open;
  DmRave.RvAdtDescFolhaMes.SetParam('MES',CbMes.Text);
  DmRave.RvAdtDescFolhaMes.SetParam('ANO',EdAno.Text);
  DmRave.RvAdtDescFolhaMes.Execute;
end;

procedure TFRelatoriosConvenio.BAdtTrazerDinheiroClick(Sender: TObject);
begin
  DmRave.ConsAdtCobrarMes.Close;
  DmRave.ConsAdtCobrarMes.Parameters.ParamByName('DATINI').Value := '01/01/1990';
  DmRave.ConsAdtCobrarMes.Parameters.ParamByName('DATFIM').Value := EndOfTheMonth(EncodeDate(StrToInt(EdAno.Text),CbMes.ItemIndex,01));
  DmRave.ConsAdtCobrarMes.Open;
  DmRave.RvAdtCobrarMes.SetParam('MES',CbMes.Text);
  DmRave.RvAdtCobrarMes.SetParam('ANO',EdAno.Text);
  DmRave.RvAdtCobrarMes.Execute;

  end;

procedure TFRelatoriosConvenio.BAnalizarClick(Sender: TObject);
begin
    if (trim(CbMes.Text) <> '') and (trim(EdAno.Text) <> '') then
   begin
      DmRave.ConsUsu_TSerMovAnalizar.Close;
      DmRave.ConsUsu_TSerMovAnalizar.Parameters.ParamByName('MES').Value := CbMes.ItemIndex;
      DmRave.ConsUsu_TSerMovAnalizar.Parameters.ParamByName('ANO').Value := StrToInt(TRIM(EdAno.Text));
      DmRave.ConsUsu_TSerMovAnalizar.Open;

      DmRave.RvConvenio_Analizar.SetParam('MES',CbMes.Text);
      DmRave.RvConvenio_Analizar.SetParam('ANO',EdAno.Text);
      DmRave.RvConvenio_Analizar.Execute;
   end;

end;

procedure TFRelatoriosConvenio.BDescontosClick(Sender: TObject);
begin
if (trim(CbMes.Text) <> '') and (trim(EdAno.Text) <> '') then
   begin
     DmRave.ConsUsu_TRhFun.Close;
     DmRave.ConsUsu_TRhFun.Parameters.ParamByName('MESSER').Value := CbMes.ItemIndex;
     DmRave.ConsUsu_TRhFun.Parameters.ParamByName('ANOSER').Value := StrToInt(TRIM(EdAno.Text));
     DmRave.ConsUsu_TRhFun.Open;

     DmRave.RvConvenio_Descontar.SetParam('MES',CbMes.Text);
     DmRave.RvConvenio_Descontar.SetParam('ANO',EdAno.Text);
     DmRave.RvConvenio_Descontar.Execute;

   end;

end;

procedure TFRelatoriosConvenio.FormShow(Sender: TObject);
var Dia,Mes,Ano : word;
begin
   DecodeDate(date,Ano,Mes,Dia);
   CbMes.ItemIndex := Mes;
   EdAno.Text := IntToStr(Ano);

end;

end.
