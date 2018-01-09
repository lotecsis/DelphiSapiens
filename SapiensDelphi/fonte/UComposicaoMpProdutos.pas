unit UComposicaoMpProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, DBCtrls, Buttons, AppEvnts,
  Mask, rxToolEdit, rxCurrEdit;

type
  TFComposicaoMpProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtCodPro: TEdit;
    edtCodDer: TEdit;
    dsCadProComp: TDataSource;
    dbg1: TDBGrid;
    ConsProdutos: TADOQuery;
    ConsProdutosCODPRO: TStringField;
    ConsProdutosDESPRO: TStringField;
    dsConsProdutos: TDataSource;
    dbtxtDESPRO: TDBText;
    btnConsProduto: TBitBtn;
    btnConsDer: TBitBtn;
    ConsDerivacoes: TADOQuery;
    ApplicationEvents1: TApplicationEvents;
    Label3: TLabel;
    edtQtdMp: TCurrencyEdit;
    btnDuplicar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure dbg1KeyPress(Sender: TObject; var Key: Char);
    procedure dbg1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodDerExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1Enter(Sender: TObject);
    procedure dbg1Exit(Sender: TObject);
    procedure edtCodProExit(Sender: TObject);
    procedure btnConsProdutoClick(Sender: TObject);
    procedure btnConsDerClick(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure edtCodDerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDuplicarClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComposicaoMpProdutos: TFComposicaoMpProdutos;

implementation

uses UDmOra, UConsGeralNfEnt, UDuplicaComposicaoMpProdutos;

{$R *.dfm}

procedure TFComposicaoMpProdutos.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  btnConsDer.Enabled := Trim(edtCodPro.Text) <> '';
  edtCodDer.Enabled := Trim(edtCodPro.Text) <> '';
  btnDuplicar.Enabled := ((DmOra.CadProComp.IsEmpty) and (edtCodPro.Text <> '') and (edtCodDer.Text <> ''));


end;

procedure TFComposicaoMpProdutos.btnConsDerClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codder,desder from e075der where codpro = '+edtCodPro.Text;

    FConsGeralNfEnt.vbWhere := True;
    FConsGeralNfEnt.vaCampo := 'CodDer';
    FConsGeralNfEnt.vnColuna := 0;
    FConsGeralNfEnt.vaTela := 'FComposicaoMpProdutos';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodDer;
end;

procedure TFComposicaoMpProdutos.btnConsProdutoClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e012fam.desfam';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e012fam on e012fam.codemp = e075pro.codemp and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e012fam.codfam = e075pro.codfam';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' inner join e083ori on e083ori.codemp = e075pro.codemp and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e083ori.codori = e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e075pro.codori = 01 and';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' e075pro.sitpro = ''A''';

    FConsGeralNfEnt.vbWhere := True;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FComposicaoMpProdutos';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodPro;
end;

procedure TFComposicaoMpProdutos.btnDuplicarClick(Sender: TObject);
begin
  FDuplicaComposicaoMpProdutos := TFDuplicaComposicaoMpProdutos.Create(Self);
  FDuplicaComposicaoMpProdutos.ShowModal;
  FreeAndNil(FDuplicaComposicaoMpProdutos);
  edtCodDerExit(Sender);
end;

procedure TFComposicaoMpProdutos.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   If DmOra.CadProCompUSU_QTDMIN.Value = 0 then
      with (Sender as TDBGrid).Canvas do
      begin
        FillRect(Rect);
        Brush.Color := $0080FFFF;
       // Font.Color := clWhite;
        Font.Style := [fsBold];

        if Column.Field.FieldName = 'USU_QTDMIN' then
           Column.Field.Alignment := taCenter;


        TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
      end;
end;

procedure TFComposicaoMpProdutos.dbg1Enter(Sender: TObject);
begin
KeyPreview := False;
end;

procedure TFComposicaoMpProdutos.dbg1Exit(Sender: TObject);
begin
KeyPreview := True;
end;

procedure TFComposicaoMpProdutos.dbg1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = vk_Return Then
    dbg1.SelectedIndex := dbg1.SelectedIndex + 1;
end;

procedure TFComposicaoMpProdutos.dbg1KeyPress(Sender: TObject; var Key: Char);
begin
if {(Key = chr(13))} key = '+' then
begin
  {Zera Buffer do Teclado}
  Key:= #0;
   if dbg1.SelectedIndex = 0 {campo Lookup} then
   begin
      keybd_event(VK_F2,0,0,0);
      keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
      keybd_event(VK_MENU,0,0,0);
      keybd_event(VK_DOWN,0,0,0);
      keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
      keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
   end;
end;


end;

procedure TFComposicaoMpProdutos.edtCodDerExit(Sender: TObject);
begin
    if Trim(edtCodDer.Text) <> '' then
       begin
         ConsDerivacoes.Close;
         ConsDerivacoes.Parameters.ParamByName('codpro').Value := edtCodPro.Text;
         ConsDerivacoes.Parameters.ParamByName('codder').Value := edtCodDer.Text;
         ConsDerivacoes.Open;
         if ConsDerivacoes.IsEmpty then
            begin
              Application.MessageBox('Derivação não encontrada','Aviso',MB_ICONWARNING+MB_OK);
              edtCodDer.Clear;
              DmOra.CadProComp.Close;
              edtQtdMp.Value := 0;
              ActiveControl := edtCodDer;
              Abort;
            end;

       end;


  if (Trim(edtCodPro.Text) <> '') and (Trim(edtCodDer.Text) <> '') then
     begin
        DmOra.ConsDescProComp.Close;
        DmOra.ConsDescProComp.SQL.Clear;
        DmOra.ConsDescProComp.SQL.Add('SELECT CODPRO,DESPRO');
        DmOra.ConsDescProComp.SQL.Add(' FROM E075PRO');
        DmOra.ConsDescProComp.SQL.Add(' WHERE');
        DmOra.ConsDescProComp.SQL.Add(' CODORI IN (10,11,12) AND');
        DmOra.ConsDescProComp.SQL.Add(' SITPRO = ''A'' AND');
        DmOra.ConsDescProComp.SQL.Add(' CODFAM NOT IN (''1001'',''1002'',''1003'',''1004'',''1005'',''1006'',''1007'')');
        DmOra.ConsDescProComp.SQL.Add(' ORDER BY DESPRO');
        DmOra.ConsDescProComp.Open;
        DmOra.ConsDescProComp.Last;
        DmOra.ConsDescProComp.First;

        DmOra.CadProComp.Close;
        DmOra.CadProComp.Parameters.ParamByName('CODPRO').Value := edtCodPro.Text;
        DmOra.CadProComp.Parameters.ParamByName('CODDER').Value := edtCodDer.Text;
        DmOra.CadProComp.Open;
        if DmOra.CadProComp.IsEmpty then
           begin
              edtQtdMp.Value := 0;
           end
        else
            begin
              DmOra.CadProComp.Last;
              DmOra.CadProComp.First;
              edtQtdMp.Value := DmOra.CadProComp.RecordCount;
            end;

        DmOra.ConsDescProComp.Close;
        DmOra.ConsDescProComp.SQL.Clear;
        DmOra.ConsDescProComp.SQL.Add('SELECT CODPRO,DESPRO');
        DmOra.ConsDescProComp.SQL.Add(' FROM E075PRO');
        DmOra.ConsDescProComp.SQL.Add(' WHERE');
        DmOra.ConsDescProComp.SQL.Add(' CODORI IN (10,11,12) AND');
        DmOra.ConsDescProComp.SQL.Add(' SITPRO = ''A'' AND');
        DmOra.ConsDescProComp.SQL.Add(' CODFAM NOT IN (''1001'',''1002'',''1003'',''1004'',''1005'',''1006'',''1007'')');
        DmOra.ConsDescProComp.SQL.Add(' AND CODPRO NOT IN (SELECT USU_CODMP FROM USU_TPROCOMP WHERE USU_CODPRO = :CODPRO AND USU_CODDER = :CODDER)');
        DmOra.ConsDescProComp.SQL.Add(' ORDER BY DESPRO');
        DmOra.ConsDescProComp.Parameters.ParamByName('CODPRO').Value := edtCodPro.Text;
        DmOra.ConsDescProComp.Parameters.ParamByName('CODDER').Value := edtCodDer.Text;
        DmOra.ConsDescProComp.Open;
        DmOra.ConsDescProComp.Last;
        DmOra.ConsDescProComp.First;
     end
  else
     begin
       DmOra.CadProComp.Close;
     end;
end;

procedure TFComposicaoMpProdutos.edtCodDerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
     begin
       btnConsDer.Click;
     end;
end;

procedure TFComposicaoMpProdutos.edtCodProExit(Sender: TObject);
begin
if Trim(edtCodPro.Text) <> '' then
   begin
      ConsProdutos.Close;
      ConsProdutos.Parameters.ParamByName('codpro').Value := edtCodPro.Text;
      ConsProdutos.Open;
      if ConsProdutos.IsEmpty then
         begin
            Application.MessageBox('Produto não encontrado','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := edtCodPro;
            Abort;
         end;
   end;
end;

procedure TFComposicaoMpProdutos.edtCodProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
     begin
       btnConsProduto.Click;
     end;
end;

procedure TFComposicaoMpProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFComposicaoMpProdutos.FormShow(Sender: TObject);
begin
  DmOra.ConsDescProComp.Close;
  DmOra.ConsDescProComp.SQL.Clear;
  DmOra.ConsDescProComp.SQL.Add('SELECT CODPRO,DESPRO');
  DmOra.ConsDescProComp.SQL.Add(' FROM E075PRO');
  DmOra.ConsDescProComp.SQL.Add(' WHERE');
  DmOra.ConsDescProComp.SQL.Add(' CODORI IN (10,11,12) AND');
  DmOra.ConsDescProComp.SQL.Add(' SITPRO = ''A'' AND');
  DmOra.ConsDescProComp.SQL.Add(' CODFAM NOT IN (''1001'',''1002'',''1003'',''1004'',''1005'',''1006'',''1007'')');
  DmOra.ConsDescProComp.SQL.Add(' ORDER BY DESPRO');
  DmOra.ConsDescProComp.Open;
  DmOra.ConsDescProComp.Last;
  DmOra.ConsDescProComp.First;

  DmOra.CadProComp.Close;

  ConsProdutos.Close;
  
end;

end.
