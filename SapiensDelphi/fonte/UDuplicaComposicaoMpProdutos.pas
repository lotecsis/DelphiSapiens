unit UDuplicaComposicaoMpProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, DB, ADODB, AppEvnts;

type
  TFDuplicaComposicaoMpProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbtxtDESPRO: TDBText;
    edtCodPro: TEdit;
    edtCodDer: TEdit;
    btnConsProduto: TBitBtn;
    btnConsDer: TBitBtn;
    dbg1: TDBGrid;
    dsConsComposicao: TDataSource;
    ConsDerivacoes: TADOQuery;
    ConsProdutos: TADOQuery;
    ConsProdutosCODPRO: TStringField;
    ConsProdutosDESPRO: TStringField;
    dsConsProdutos: TDataSource;
    btnConfirmar: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    procedure edtCodProExit(Sender: TObject);
    procedure edtCodDerExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure btnConsProdutoClick(Sender: TObject);
    procedure btnConsDerClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodDerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDuplicaComposicaoMpProdutos: TFDuplicaComposicaoMpProdutos;

implementation

uses UDmOra, UConsGeralNfEnt, UComposicaoMpProdutos;

{$R *.dfm}

procedure TFDuplicaComposicaoMpProdutos.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  btnConsDer.Enabled := Trim(edtCodPro.Text) <> '';
  edtCodDer.Enabled := Trim(edtCodPro.Text) <> '';
  btnConfirmar.Enabled := not DmOra.ConsComposicao.IsEmpty;
end;

procedure TFDuplicaComposicaoMpProdutos.btnConfirmarClick(Sender: TObject);
begin
   DmOra.ConsComposicao.First;
   while not DmOra.ConsComposicao.Eof do
     begin
       DmOra.CadProCompDuplica.Close;
       DmOra.CadProCompDuplica.Open;
       DmOra.CadProCompDuplica.Insert;
       DmOra.CadProCompDuplicaUSU_CODPRO.Value := FComposicaoMpProdutos.edtCodPro.Text;
       DmOra.CadProCompDuplicaUSU_CODDER.Value := FComposicaoMpProdutos.edtCodDer.Text;
       DmOra.CadProCompDuplicaUSU_CODMP.Value := DmOra.ConsComposicaoUSU_CODMP.Value;
       DmOra.CadProCompDuplicaUSU_QTDMIN.Value := 0;
       DmOra.CadProCompDuplica.Post;

       DmOra.ConsComposicao.Next;
     end;
   Close;
end;

procedure TFDuplicaComposicaoMpProdutos.btnConsDerClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select codder,desder from e075der where codpro = '+edtCodPro.Text;

    FConsGeralNfEnt.vbWhere := True;
    FConsGeralNfEnt.vaCampo := 'CodDer';
    FConsGeralNfEnt.vnColuna := 0;
    FConsGeralNfEnt.vaTela := 'FDuplicaComposicaoMpProdutos';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodDer;
end;

procedure TFDuplicaComposicaoMpProdutos.btnConsProdutoClick(Sender: TObject);
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
    FConsGeralNfEnt.vaTela := 'FDuplicaComposicaoMpProdutos';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);

    ActiveControl := edtCodPro;
end;

procedure TFDuplicaComposicaoMpProdutos.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
If DmOra.ConsComposicaoUSU_QTDMIN.Value = 0 then
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

procedure TFDuplicaComposicaoMpProdutos.edtCodDerExit(Sender: TObject);
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
              DmOra.ConsComposicao.Close;
              ActiveControl := edtCodDer;
              Abort;
            end;
       end;

   if (Trim(edtCodPro.Text) <> '') and (Trim(edtCodDer.Text) <> '') then
     begin
       DmOra.ConsComposicao.Close;
       DmOra.ConsComposicao.Parameters.ParamByName('CODPRO').Value := edtCodPro.Text;
       DmOra.ConsComposicao.Parameters.ParamByName('CODDER').Value := edtCodDer.Text;
       DmOra.ConsComposicao.Open;
     end;

end;

procedure TFDuplicaComposicaoMpProdutos.edtCodDerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
     begin
       btnConsDer.Click;
     end;
end;

procedure TFDuplicaComposicaoMpProdutos.edtCodProExit(Sender: TObject);
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

procedure TFDuplicaComposicaoMpProdutos.edtCodProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_F3 then
   begin
     btnConsProduto.Click;
   end;
end;

procedure TFDuplicaComposicaoMpProdutos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFDuplicaComposicaoMpProdutos.FormShow(Sender: TObject);
begin
  DmOra.ConsComposicao.Close;
end;

end.
