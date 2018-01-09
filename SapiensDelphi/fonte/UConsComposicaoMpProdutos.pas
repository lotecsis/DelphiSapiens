unit UConsComposicaoMpProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, rxToolEdit, Buttons, DateUtils;

type
  TFConsComposicaoMpProdutos = class(TForm)
    dbg1: TDBGrid;
    dsConsProdutosComposicao: TDataSource;
    btnMostrar: TBitBtn;
    edtDatIni: TDateEdit;
    edtDatFim: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtProduto: TEdit;
    Label4: TLabel;
    cbbOrdenar: TComboBox;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsComposicaoMpProdutos: TFConsComposicaoMpProdutos;

implementation

uses UDmOra;

{$R *.dfm}

procedure TFConsComposicaoMpProdutos.btnMostrarClick(Sender: TObject);
begin
  DmOra.ConsProdutosComposicao.Close;
  DmOra.ConsProdutosComposicao.SQL.Clear;
  DmOra.ConsProdutosComposicao.SQL.Add('select sum(e140ipv.qtdfat) as qtd_faturado,');
  DmOra.ConsProdutosComposicao.SQL.Add('      (select count(usu_tprocomp.usu_codmp) from usu_tprocomp');
  DmOra.ConsProdutosComposicao.SQL.Add('           where');
  DmOra.ConsProdutosComposicao.SQL.Add('           usu_tprocomp.usu_codpro = e140ipv.codpro and');
  DmOra.ConsProdutosComposicao.SQL.Add('           usu_tprocomp.usu_codder = e140ipv.codder) as Qtd_MP_Cad,');
  DmOra.ConsProdutosComposicao.SQL.Add('      (select count(usu_tprocomp.usu_codmp) from usu_tprocomp');
  DmOra.ConsProdutosComposicao.SQL.Add('           where');
  DmOra.ConsProdutosComposicao.SQL.Add('           usu_tprocomp.usu_codpro = e140ipv.codpro and');
  DmOra.ConsProdutosComposicao.SQL.Add('           usu_tprocomp.usu_codder = e140ipv.codder and');
  DmOra.ConsProdutosComposicao.SQL.Add('           usu_tprocomp.usu_qtdmin = 0) as Qtd_MP_Cad_Faltando,');
  DmOra.ConsProdutosComposicao.SQL.Add('      e140ipv.codpro,e140ipv.codder,e075pro.despro');
  DmOra.ConsProdutosComposicao.SQL.Add('from e140ipv');
  DmOra.ConsProdutosComposicao.SQL.Add('inner join e140nfv on e140nfv.codemp = e140ipv.codemp and');
  DmOra.ConsProdutosComposicao.SQL.Add('                      e140nfv.codfil = e140ipv.codfil and');
  DmOra.ConsProdutosComposicao.SQL.Add('                      e140nfv.codsnf = e140ipv.codsnf and');
  DmOra.ConsProdutosComposicao.SQL.Add('                      e140nfv.numnfv = e140ipv.numnfv');
  DmOra.ConsProdutosComposicao.SQL.Add('inner join e001tns on e001tns.codemp = e140ipv.codemp and');
  DmOra.ConsProdutosComposicao.SQL.Add('                      e001tns.codtns = e140ipv.tnspro');
  DmOra.ConsProdutosComposicao.SQL.Add('inner join e075pro on e075pro.codemp = e140ipv.codemp and');
  DmOra.ConsProdutosComposicao.SQL.Add('                      e075pro.codpro = e140ipv.codpro');
  DmOra.ConsProdutosComposicao.SQL.Add('                                               where');
  DmOra.ConsProdutosComposicao.SQL.Add('                                               e140nfv.datemi between :datini and :datfim and');
  DmOra.ConsProdutosComposicao.SQL.Add('                                               e001tns.venfat in (''S'') and');
  DmOra.ConsProdutosComposicao.SQL.Add('                                               e075pro.sitpro = ''A''');

  if Trim(edtProduto.Text) <> '' then
     begin
       DmOra.ConsProdutosComposicao.SQL.Add(' and e075pro.despro like'+QuotedStr('%'+edtProduto.Text+'%'));
     end;

  DmOra.ConsProdutosComposicao.SQL.Add('                                                group by e140ipv.codpro,e140ipv.codder,e075pro.despro');

   if cbbOrdenar.ItemIndex = 0 then
      begin
        DmOra.ConsProdutosComposicao.SQL.Add('                                                order by qtd_faturado desc');
      end
   else
   if cbbOrdenar.ItemIndex = 1 then
      begin
        DmOra.ConsProdutosComposicao.SQL.Add('                                                order by e075pro.despro');
      end;



  DmOra.ConsProdutosComposicao.SQL.Add('');
  DmOra.ConsProdutosComposicao.SQL.Add('');
  DmOra.ConsProdutosComposicao.SQL.Add('');
  DmOra.ConsProdutosComposicao.Parameters.ParamByName('datini').Value := edtDatIni.Date;
  DmOra.ConsProdutosComposicao.Parameters.ParamByName('datfim').Value := edtDatFim.Date;
  DmOra.ConsProdutosComposicao.Open;

end;

procedure TFConsComposicaoMpProdutos.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if ((Column.FieldName = 'QTD_MP_CAD') or (Column.FieldName = 'QTD_MP_CAD_FALTANDO')) then
    begin
      If ((DmOra.ConsProdutosComposicaoQTD_MP_CAD.AsFloat = 0) or (DmOra.ConsProdutosComposicaoQTD_MP_CAD_FALTANDO.AsFloat > 0)) then
            with (Sender as TDBGrid).Canvas do
            begin

              FillRect(Rect);
              Brush.Color := $0080FFFF;
             // Font.Color := clWhite;
              Font.Style := [fsBold];

              if Column.Field.FieldName <> 'DESPRO' then
                 Column.Field.Alignment := taCenter;

              TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
            end;
    end;
end;

procedure TFConsComposicaoMpProdutos.FormShow(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheYear(Date);
  edtDatFim.Date := Date;
  DmOra.ConsProdutosComposicao.Close;
end;

end.
