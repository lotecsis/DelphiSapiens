unit UApelidosProdSapiens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DB, ImgList;

type
  TFApelidosProdSapiens = class(TForm)
    dbg1: TDBGrid;
    edtCodSapiens: TEdit;
    edtNomeSapiens: TEdit;
    edtApelido: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnl1: TPanel;
    edtCodProSapiens: TEdit;
    edtNomProSapiens: TEdit;
    edtApelidoAdd: TEdit;
    btnAdicionar: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    btnConsProd: TBitBtn;
    dsConsApelidos_Prod: TDataSource;
    ImageList1: TImageList;
    memoObsApe: TMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConsProdClick(Sender: TObject);
    procedure edtCodProSapiensExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtApelidoChange(Sender: TObject);
    procedure edtNomeSapiensChange(Sender: TObject);
    procedure edtCodSapiensChange(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FApelidosProdSapiens: TFApelidosProdSapiens;

implementation

uses UDmOra, UDmFire, UConsGeralNfEnt;

{$R *.dfm}

procedure TFApelidosProdSapiens.btnAdicionarClick(Sender: TObject);
begin
  if (trim(edtCodProSapiens.Text) <> '') and (Trim(edtApelidoAdd.Text) <> '') then
      begin
        DmFire.CadApelidos_Prod.Open;
        DmFire.CadApelidos_Prod.Insert;
        DmFire.CadApelidos_ProdCODPROSAP.Value := edtCodProSapiens.Text;
        DmFire.CadApelidos_ProdDESPROSAP.Value := edtNomProSapiens.Text;
        DmFire.CadApelidos_ProdDESAPE.Value := edtApelidoAdd.Text;
        DmFire.CadApelidos_ProdOBSAPE.Value := memoObsApe.Text;

        DmFire.ConsSqlSapLider.Close;
        DmFire.ConsSqlSapLider.SQL.Clear;
        DmFire.ConsSqlSapLider.SQL.Add('select max(idape) as ultimo from apelidos_prod');
        DmFire.ConsSqlSapLider.Open;
        if not DmFire.ConsSqlSapLider.IsEmpty then
           DmFire.CadApelidos_ProdIDAPE.AsInteger := DmFire.ConsSqlSapLider.FieldByName('ultimo').AsInteger + 1
        else
           DmFire.CadApelidos_ProdIDAPE.AsInteger := 1;

       DmFire.CadApelidos_Prod.Post;
       DmFire.IBTBancoSapLider.CommitRetaining;
       edtCodProSapiens.Clear;
       edtNomProSapiens.Clear;
       edtApelidoAdd.Clear;
       memoObsApe.Clear;
       Application.MessageBox('Lançamento realizado com sucesso!!','Confirmação',MB_ICONINFORMATION+MB_OK);

        DmFire.ConsApelidos_Prod.Close;
        DmFire.ConsApelidos_Prod.SQL.Clear;
        DmFire.ConsApelidos_Prod.SQL.Add('SELECT apelidos_prod.*');
        DmFire.ConsApelidos_Prod.SQL.Add(' FROM apelidos_prod');
        DmFire.ConsApelidos_Prod.SQL.Add(' ORDER BY apelidos_prod.desprosap');
        DmFire.ConsApelidos_Prod.Open;
      end;

end;

procedure TFApelidosProdSapiens.btnConsProdClick(Sender: TObject);
begin
    FConsGeralNfEnt := TFConsGeralNfEnt.Create(Self);
    FConsGeralNfEnt.vaSql := 'select e075pro.codpro,e075pro.despro,e075pro.codfam,e075pro.codori';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' from e075pro';
    FConsGeralNfEnt.vaSql := FConsGeralNfEnt.vaSql +' where codori <> 01 and sitpro = ''A''';
    FConsGeralNfEnt.vbWhere := true;
    FConsGeralNfEnt.vaCampo := 'CodPro';
    FConsGeralNfEnt.vnColuna := 1;
    FConsGeralNfEnt.vaTela := 'FApelidosProdSapiens';
    FConsGeralNfEnt.ShowModal;
    FreeAndNil(FConsGeralNfEnt);
    ActiveControl := edtCodProSapiens;
end;

procedure TFApelidosProdSapiens.dbg1DblClick(Sender: TObject);
begin
   if (dbg1.SelectedField.FieldName = 'img') and  not(DmFire.ConsApelidos_Prod.IsEmpty) then
        begin
          DmFire.CadApelidos_Prod.Close;
          DmFire.CadApelidos_Prod.ParamByName('IDAPE').AsInteger := DmFire.ConsApelidos_ProdIDAPE.AsInteger;
          DmFire.CadApelidos_Prod.Open;
          if not DmFire.CadApelidos_Prod.IsEmpty then
             begin
               if  Application.MessageBox('Deseja realmente excluir o registro?','Aviso',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then
                   begin
                     DmFire.CadApelidos_Prod.Delete;
                     DmFire.IBTBancoSapLider.CommitRetaining;

                      DmFire.ConsApelidos_Prod.Close;
                      DmFire.ConsApelidos_Prod.SQL.Clear;
                      DmFire.ConsApelidos_Prod.SQL.Add('SELECT apelidos_prod.*');
                      DmFire.ConsApelidos_Prod.SQL.Add(' FROM apelidos_prod');
                      DmFire.ConsApelidos_Prod.SQL.Add(' ORDER BY apelidos_prod.desprosap');
                      DmFire.ConsApelidos_Prod.Open;
                   end;
             end;

        end;
end;

procedure TFApelidosProdSapiens.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.FieldName = 'img' then
      begin
          dbg1.Canvas.FillRect(Rect);
          ImageList1.Draw(dbg1.Canvas,Rect.Left+7,Rect.Top+1,9);
      end;
end;

procedure TFApelidosProdSapiens.edtApelidoChange(Sender: TObject);
begin
  DmFire.ConsApelidos_Prod.Close;
  DmFire.ConsApelidos_Prod.SQL.Clear;
  DmFire.ConsApelidos_Prod.SQL.Add('SELECT apelidos_prod.*');
  DmFire.ConsApelidos_Prod.SQL.Add(' FROM apelidos_prod');
  DmFire.ConsApelidos_Prod.SQL.Add(' WHERE');
  DmFire.ConsApelidos_Prod.SQL.Add(' apelidos_prod.desape like '+QuotedStr('%'+edtApelido.Text+'%'));
  DmFire.ConsApelidos_Prod.SQL.Add(' ORDER BY apelidos_prod.desprosap');
  DmFire.ConsApelidos_Prod.Open;
end;

procedure TFApelidosProdSapiens.edtCodProSapiensExit(Sender: TObject);
begin
  if Trim(edtCodProSapiens.Text) <> '' then
     begin
       DmOra.ConsSql.Close;
       DmOra.ConsSql.SQL.Clear;
       DmOra.ConsSql.SQL.Add('SELECT CODPRO,DESPRO FROM E075PRO');
       DmOra.ConsSql.SQL.Add(' WHERE');
       DmOra.ConsSql.SQL.Add('CODPRO = :CODPRO');
       DmOra.ConsSql.Parameters.ParamByName('CODPRO').Value := edtCodProSapiens.Text;
       DmOra.ConsSql.Open;
       if not DmOra.ConsSql.IsEmpty then
          begin
            edtNomProSapiens.Text := DmOra.ConsSql.FieldByName('DESPRO').AsString;
          end
       else
          begin
            edtNomProSapiens.Clear;
            Application.MessageBox('Produto não encotrado','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := edtCodProSapiens;
            Abort;
          end;
     end
  else
     begin
        edtNomProSapiens.Clear;
     end;

end;

procedure TFApelidosProdSapiens.edtCodSapiensChange(Sender: TObject);
begin
  DmFire.ConsApelidos_Prod.Close;
  DmFire.ConsApelidos_Prod.SQL.Clear;
  DmFire.ConsApelidos_Prod.SQL.Add('SELECT apelidos_prod.*');
  DmFire.ConsApelidos_Prod.SQL.Add(' FROM apelidos_prod');
  DmFire.ConsApelidos_Prod.SQL.Add(' WHERE');
  DmFire.ConsApelidos_Prod.SQL.Add(' apelidos_prod.codprosap like '+QuotedStr('%'+edtCodSapiens.Text+'%'));
  DmFire.ConsApelidos_Prod.SQL.Add(' ORDER BY apelidos_prod.desprosap');
  DmFire.ConsApelidos_Prod.Open;
end;

procedure TFApelidosProdSapiens.edtNomeSapiensChange(Sender: TObject);
begin
  DmFire.ConsApelidos_Prod.Close;
  DmFire.ConsApelidos_Prod.SQL.Clear;
  DmFire.ConsApelidos_Prod.SQL.Add('SELECT apelidos_prod.*');
  DmFire.ConsApelidos_Prod.SQL.Add(' FROM apelidos_prod');
  DmFire.ConsApelidos_Prod.SQL.Add(' WHERE');
  DmFire.ConsApelidos_Prod.SQL.Add(' apelidos_prod.desprosap like '+QuotedStr('%'+edtNomeSapiens.Text+'%'));
  DmFire.ConsApelidos_Prod.SQL.Add(' ORDER BY apelidos_prod.desprosap');
  DmFire.ConsApelidos_Prod.Open;
end;

procedure TFApelidosProdSapiens.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

procedure TFApelidosProdSapiens.FormShow(Sender: TObject);
begin
  DmFire.ConsApelidos_Prod.Close;
  DmFire.ConsApelidos_Prod.SQL.Clear;
  DmFire.ConsApelidos_Prod.SQL.Add('SELECT apelidos_prod.*');
  DmFire.ConsApelidos_Prod.SQL.Add(' FROM apelidos_prod');
  DmFire.ConsApelidos_Prod.SQL.Add(' ORDER BY apelidos_prod.desprosap');
  DmFire.ConsApelidos_Prod.Open;

  memoObsApe.Clear;
end;

end.
