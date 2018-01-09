unit URelEntradaSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, RbButton, RbRadioButton, RbDrawCore,
  RbCheckBox, DB, Grids, DBGrids;

type
  TFRelEntradaSaida = class(TForm)
    GroupBox1: TGroupBox;
    RbEmLinha: TRbCheckBox;
    RbForaLinha: TRbCheckBox;
    GroupBox2: TGroupBox;
    RbMateriaPrima: TRbRadioButton;
    RbClasse: TRbRadioButton;
    EdPesquisa: TEdit;
    BPesquisa: TRbButton;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    RbEntrada: TRbRadioButton;
    RbSaida: TRbRadioButton;
    BImprimir: TRbButton;
    DsEntraSaida: TDataSource;
    DsMt: TDataSource;
    RbGeral: TRbRadioButton;
    procedure BImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RbGeralClick(Sender: TObject);
    procedure RbMateriaPrimaClick(Sender: TObject);
    procedure RbClasseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEntradaSaida: TFRelEntradaSaida;

implementation

uses UDataModule5, UQrEntradaSaida, UConsSimpClasse, UDataModule1,
  UConsSimpMtPrima;

{$R *.dfm}

procedure TFRelEntradaSaida.BImprimirClick(Sender: TObject);
begin
if Data1.Date = 0 then
  begin
    MessageDlg('Informe a data inicial.',mtWarning,[mbok],0);
    Data1.SetFocus;
  end
else
if Data2.Date = 0 then
  begin
    MessageDlg('Informe a data final.',mtWarning,[mbok],0);
    Data2.SetFocus;
  end
else
 if (RbMateriaPrima.Checked = true) and (EdPesquisa.Text = '') then
  begin
    MessageDlg('Informe a matéria prima.',mtWarning,[mbok],0);
    EdPesquisa.SetFocus;
  end
 else
  if (RbClasse.Checked = true) and (EdPesquisa.Text = '') then
  begin
    MessageDlg('Informe a classe.',mtWarning,[mbok],0);
    EdPesquisa.SetFocus;
  end
 else
begin

 //em linha, entrada, materia prima
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = false) and
    (RbEntrada.Checked = true) and (RbGeral.Checked = true) then
    begin//1
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''N''');
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;
      QrRelEntradaSaida.Preview;

   end//1
else
  //fora de linha, entrada, materia prima
 if (RbEmLinha.Checked = false) and (RbForaLinha.Checked = true) and
    (RbEntrada.Checked = true) and (RbGeral.Checked = true) then
    begin//2
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;

      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;
      QrRelEntradaSaida.Preview;
   end//2
else
//em linha, saida, materia prima
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = false) and
    (RbSaida.Checked = true) and (RbGeral.Checked = true) then
    begin//3
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''N''');
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;

      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;
      QrRelEntradaSaida.Preview;
   end//3
 else
//fora de linha, saida, materia prima
 if (RbEmLinha.Checked = false) and (RbForaLinha.Checked = true) and
    (RbSaida.Checked = true) and (RbGeral.Checked = true) then
    begin//4
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;

      QrRelEntradaSaida.Preview;
   end//4
//toda consulta por classe da matéria prima
else
//em linha, entrada, materia prima
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = false) and
    (RbEntrada.Checked = true) and (RbClasse.Checked = true) then
    begin//5
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''N''');
      DataModule5.IBQConsMtEs.SQL.Add('and classe.ds_classe LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;
      QrRelEntradaSaida.Preview;

   end//5
else
  //fora de linha, entrada, materia prima
 if (RbEmLinha.Checked = false) and (RbForaLinha.Checked = true) and
    (RbEntrada.Checked = true) and (RbClasse.Checked = true) then
    begin//6
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('and classe.ds_classe LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;

      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;
      QrRelEntradaSaida.Preview;
   end//6
else
//em linha, saida, materia prima
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = false) and
    (RbSaida.Checked = true) and (RbClasse.Checked = true) then
    begin//7
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''N''');
      DataModule5.IBQConsMtEs.SQL.Add('and classe.ds_classe LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;

      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;
      QrRelEntradaSaida.Preview;
   end//7
 else
//fora de linha, saida, materia prima
 if (RbEmLinha.Checked = false) and (RbForaLinha.Checked = true) and
    (RbSaida.Checked = true) and (RbClasse.Checked = true) then
    begin//8
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('and classe.ds_classe LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;

      QrRelEntradaSaida.Preview;
   end//8
 else
 //saida, por classe
//pega todos em linha e fora de linha
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = true) and
    (RbSaida.Checked = true) and (RbClasse.Checked = true) then
    begin//9
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('classe.ds_classe LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;

      QrRelEntradaSaida.Preview;
   end//9
 else
//entrada, por classe
//pega todos em linha e fora de linha
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = true) and
    (RbEntrada.Checked = true) and (RbClasse.Checked = true) then
    begin//10
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('classe.ds_classe LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;

      QrRelEntradaSaida.Preview;
   end;//10
//saida, por matéria prima
//pega todos em linha e fora de linha
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = true) and
    (RbSaida.Checked = true) and (RbGeral.Checked = true) then
    begin//11
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;

      QrRelEntradaSaida.Preview;
   end//11
 else
//entrada, por matéria prima
//pega todos em linha e fora de linha
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = true) and
    (RbEntrada.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//12
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;

      QrRelEntradaSaida.Preview;
   end//12
//toda consulta por da matéria prima EXPECIFICO!!!!!
else
//em linha, entrada, materia prima
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = false) and
    (RbEntrada.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//13
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''N''');
      DataModule5.IBQConsMtEs.SQL.Add('and mt.ds_mat_prima LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;
      QrRelEntradaSaida.Preview;

   end//13
else
  //fora de linha, entrada, materia prima
 if (RbEmLinha.Checked = false) and (RbForaLinha.Checked = true) and
    (RbEntrada.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//14
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('and mt.ds_mat_prima LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;

      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;
      QrRelEntradaSaida.Preview;
   end//14
else
//em linha, saida, materia prima
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = false) and
    (RbSaida.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//15
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''N''');
      DataModule5.IBQConsMtEs.SQL.Add('and mt.ds_mat_prima  LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;

      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;
      QrRelEntradaSaida.Preview;
   end//15
 else
//fora de linha, saida, materia prima
 if (RbEmLinha.Checked = false) and (RbForaLinha.Checked = true) and
    (RbSaida.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//16
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.fora_linha = ''S''');
      DataModule5.IBQConsMtEs.SQL.Add('and mt.ds_mat_prima  LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;

      QrRelEntradaSaida.Preview;
   end//16
 else
 //saida, por classe
//pega todos em linha e fora de linha
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = true) and
    (RbSaida.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//17
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''S'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.ds_mat_prima LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''S''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Saída';
      QrRelEntradaSaida.LEntSaida.Left := 334;

      QrRelEntradaSaida.Preview;
   end//17
 else
//entrada, por classe
//pega todos em linha e fora de linha
 if (RbEmLinha.Checked = true) and (RbForaLinha.Checked = true) and
    (RbEntrada.Checked = true) and (RbMateriaPrima.Checked = true) then
    begin//18
      DataModule5.IBQConsMtEs.Close;
      DataModule5.IBQConsMtEs.SQL.Clear;
      DataModule5.IBQConsMtEs.SQL.Add('select mt.cd_mat_prima,mt.ds_mat_prima,');
      DataModule5.IBQConsMtEs.SQL.Add('sum(e_s.qtde) as total');
      DataModule5.IBQConsMtEs.SQL.Add('from MATERIA_PRIMA mt');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CONTROLE_ENTRADA_SAIDA e_s on e_s.cd_mat_prima = mt.cd_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsMtEs.SQL.Add('inner join CLASSE_MAT_PRIMA classe on classe.cd_classe = mt.cd_classe');
      DataModule5.IBQConsMtEs.SQL.Add('where');
      DataModule5.IBQConsMtEs.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsMtEs.SQL.Add('mov.tipo_movimento = ''E'' and');
      DataModule5.IBQConsMtEs.SQL.Add('mt.ds_mat_prima LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
      DataModule5.IBQConsMtEs.SQL.Add('group by mt.cd_mat_prima,mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.SQL.Add('order by mt.ds_mat_prima');
      DataModule5.IBQConsMtEs.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsMtEs.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsEntSai.Close;
      DataModule5.IBQConsEntSai.SQL.Clear;
      DataModule5.IBQConsEntSai.SQL.Add('select e_s.dt_movimento, e_s.hr_movimento, e_s.qtde,');
      DataModule5.IBQConsEntSai.SQL.Add('mov.ds_movimento,un.sigla_unidade');
      DataModule5.IBQConsEntSai.SQL.Add('from CONTROLE_ENTRADA_SAIDA e_s');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MOVIMENTO_ESTOQUE mov on  mov.cd_movimento = e_s.cd_movimento');
      DataModule5.IBQConsEntSai.SQL.Add('inner join MATERIA_PRIMA mt on mt.cd_mat_prima = e_s.cd_mat_prima');
      DataModule5.IBQConsEntSai.SQL.Add('inner join UNIDADE_MEDIDA un on un.cd_unidade = mt.cd_un_medida');
      DataModule5.IBQConsEntSai.SQL.Add('where');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.cd_mat_prima = :cd_mat_prima and');
      DataModule5.IBQConsEntSai.SQL.Add('e_s.dt_movimento between :pdata1 and :pdata2 and');
      DataModule5.IBQConsEntSai.SQL.Add('mov.tipo_movimento = ''E''');
      DataModule5.IBQConsEntSai.SQL.Add('order by e_s.dt_movimento,e_s.hr_movimento desc');
      DataModule5.IBQConsEntSai.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule5.IBQConsEntSai.ParamByName('pdata2').AsDate := Data2.Date;

      DataModule5.IBQConsMtEs.Open;
      DataModule5.IBQConsEntSai.Open;
      QrRelEntradaSaida.LData1.Caption := DateToStr(Data1.Date);
      QrRelEntradaSaida.LData2.Caption := DateToStr(Data2.Date);
      QrRelEntradaSaida.LEntSaida.Caption := 'Entrada';
      QrRelEntradaSaida.LEntSaida.Left := 328;

      QrRelEntradaSaida.Preview;
   end;//18
end;
end;

procedure TFRelEntradaSaida.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
if key = #27 then
  begin
     Close;
  end;
end;

procedure TFRelEntradaSaida.FormShow(Sender: TObject);
begin
  Data1.Clear;
  Data2.Clear;
  EdPesquisa.Clear;
  Data2.Date := Date;
end;

procedure TFRelEntradaSaida.BPesquisaClick(Sender: TObject);
begin
if RbClasse.Checked = true then
begin
  Application.CreateForm(TFConsSimpClasse, FConsSimpClasse);
  if FConsSimpClasse.ShowModal = mrOk then
    begin
      EdPesquisa.Text := DataModule1.IBQConsClasseDS_CLASSE.AsString;
    end;
  end
else
  if RbMateriaPrima.Checked = true then
    begin
       Application.CreateForm(TFConsSimpMtPrima, FConsSimpMtPrima);
    if FConsSimpMtPrima.ShowModal = mrOk then
    begin

      EdPesquisa.Text := DataModule1.IBQConsMatPrimaDS_MAT_PRIMA.AsString;

    end;


    end;
end;

procedure TFRelEntradaSaida.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_UP then
    SelectNext(ActiveControl,false,true);
  if key = VK_DOWN then
    SelectNext(ActiveControl, true, true);
end;

procedure TFRelEntradaSaida.RbGeralClick(Sender: TObject);
begin
EdPesquisa.Clear;
end;

procedure TFRelEntradaSaida.RbMateriaPrimaClick(Sender: TObject);
begin
EdPesquisa.Clear;
end;

procedure TFRelEntradaSaida.RbClasseClick(Sender: TObject);
begin
EdPesquisa.Clear;
end;

end.
