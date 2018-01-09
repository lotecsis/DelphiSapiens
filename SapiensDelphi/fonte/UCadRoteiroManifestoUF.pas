unit UCadRoteiroManifestoUF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, rxToolEdit, rxCurrEdit,
  Grids, DBGrids, ImgList;

type
  TFCadRoteiroManifestoUF = class(TForm)
    Label1: TLabel;
    dbedtUSU_DESROT: TDBEdit;
    dsCadusu_tRotManGer: TDataSource;
    btnBNovo: TBitBtn;
    btnConsRota: TBitBtn;
    dbg1: TDBGrid;
    dsConsusu_tRotMan: TDataSource;
    cbbMovimento: TComboBox;
    btnConsCep: TSpeedButton;
    btn2: TBitBtn;
    edtCEP: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ImageList1: TImageList;
    edtUF: TEdit;
    procedure btnConsRotaClick(Sender: TObject);
    procedure btnBNovoClick(Sender: TObject);
    procedure btnBCancelarClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg1CellClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConsCepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure edtCEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtUSU_DESROTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vaUltimoTipoMov : string;
    vnId_Rota : Integer;
  end;

var
  FCadRoteiroManifestoUF: TFCadRoteiroManifestoUF;

implementation

uses UDmOra, UConsCEP, UConsRota;

{$R *.dfm}

procedure TFCadRoteiroManifestoUF.btnConsCepClick(Sender: TObject);
begin
  if not DmOra.Cadusu_tRotManGer.IsEmpty then
     begin
        FConsCEP := TFConsCEP.Create(Self);
        if FConsCEP.ShowModal = mrOk then
           begin
             edtCEP.Value := DmOra.ConsCEPCEPINI.Value;
             edtUF.Text := DmOra.ConsCEPSIGUFS.Value;
           end;
        FreeAndNil(FConsCEP);
        ActiveControl := edtCEP;
     end;
end;

procedure TFCadRoteiroManifestoUF.btn2Click(Sender: TObject);
begin
  if not DmOra.Cadusu_tRotManGer.IsEmpty then
     begin
       if edtCEP.Value = 0 then
          begin
            Application.MessageBox('Informe o CEP','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := edtCEP;
            Abort;
          end;
       if edtUF.Text = '' then
          begin
            Application.MessageBox('Informe o Estado','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := edtUF;
            Abort;
          end;
       if cbbMovimento.Text = '' then
          begin
            Application.MessageBox('Informe o Tipo de Movimento','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := cbbMovimento;
            Abort;
          end;

       if (vaUltimoTipoMov = '') and (cbbMovimento.Text <> 'C') then
          begin
            Application.MessageBox('Para o primeiro movimento é necessário informar o tipo C(Carga)','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := cbbMovimento;
            Abort;
          end;

       if (vaUltimoTipoMov = 'D') and (cbbMovimento.Text = 'C') then
          begin
            Application.MessageBox('Depois de um D(Descarga) não é possível informar C(Carga)','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := cbbMovimento;
            Abort;
          end;

       if (vaUltimoTipoMov = 'D') and (cbbMovimento.Text = 'P') then
          begin
            Application.MessageBox('Depois de um D(Descarga) não é possível informar P(Passagem)','Aviso',MB_ICONWARNING+MB_OK);
            ActiveControl := cbbMovimento;
            Abort;
          end;



       DmOra.Cadusu_tRotMan.Open;
       DmOra.Cadusu_tRotMan.Insert;
       DmOra.Cadusu_tRotManUSU_ID_ROTA.Value := DmOra.Cadusu_tRotManGerUSU_ID_ROTA.AsInteger;
       DmOra.Cadusu_tRotManUSU_CEPCID.Value := edtCEP.AsInteger;
       DmOra.Cadusu_tRotManUSU_UFSPAS.Value := edtUF.Text;
       DmOra.Cadusu_tRotManUSU_TIPMOV.Value := cbbMovimento.Text;

       DmOra.ConsSql.Close;
       DmOra.ConsSql.SQL.Clear;
       DmOra.ConsSql.SQL.Add('select usu_seqrot from usu_trotman');
       DmOra.ConsSql.SQL.Add(' WHERE USU_ID_ROTA = :USU_ID_ROTA');
       DmOra.ConsSql.SQL.Add(' order by usu_seqrot desc');
       DmOra.ConsSql.Parameters.ParamByName('USU_ID_ROTA').Value := DmOra.Cadusu_tRotManGerUSU_ID_ROTA.AsInteger;
       DmOra.ConsSql.Open;
       DmOra.ConsSql.First;
       if DmOra.ConsSql.IsEmpty then
          DmOra.Cadusu_tRotManUSU_SEQROT.AsInteger := 1
       else
          DmOra.Cadusu_tRotManUSU_SEQROT.AsInteger := DmOra.ConsSql.FieldByName('usu_seqrot').AsInteger + 1;

       DmOra.Cadusu_tRotMan.Post;

       edtCEP.Value := 0;
       edtUF.Clear;
       cbbMovimento.ItemIndex := -1;

       DmOra.Consusu_tRotMan.Close;
       DmOra.Consusu_tRotMan.Parameters.ParamByName('usu_id_rota').Value := vnId_Rota;
       DmOra.Consusu_tRotMan.Open;
       DmOra.Consusu_tRotMan.First;

       DmOra.Cadusu_tRotManGer.Edit;
       DmOra.Cadusu_tRotManGerUSU_DESROT.Value := DmOra.Consusu_tRotManUSU_UFSPAS.AsString + '('+DmOra.Consusu_tRotManUSU_TIPMOV.AsString+')';
       DmOra.Consusu_tRotMan.Next;

       while not DmOra.Consusu_tRotMan.Eof do
         begin
           DmOra.Cadusu_tRotManGerUSU_DESROT.Value := DmOra.Cadusu_tRotManGerUSU_DESROT.Value +' -- '+ DmOra.Consusu_tRotManUSU_UFSPAS.AsString + '('+DmOra.Consusu_tRotManUSU_TIPMOV.AsString+')';

           DmOra.Consusu_tRotMan.Next;
         end;
       DmOra.Consusu_tRotMan.First;
       DmOra.Cadusu_tRotManGer.Post;

       if DmOra.Consusu_tRotMan.IsEmpty then
           begin
             vaUltimoTipoMov := '';
           end
       else
          begin
            DmOra.Consusu_tRotMan.Last;
            vaUltimoTipoMov := DmOra.Consusu_tRotManUSU_TIPMOV.Value;
            DmOra.Consusu_tRotMan.First;
          end;

       ActiveControl := edtCEP;

     end;
end;

procedure TFCadRoteiroManifestoUF.btnBCancelarClick(Sender: TObject);
begin

   DmOra.Cadusu_tRotManGer.Cancel;

end;

procedure TFCadRoteiroManifestoUF.btnBNovoClick(Sender: TObject);
begin
  DmOra.Cadusu_tRotManGer.Open;
  DmOra.Cadusu_tRotManGer.Insert;
  DmOra.ConsSql.Close;
  DmOra.ConsSql.SQL.Clear;
  DmOra.ConsSql.SQL.Add('select usu_id_rota from usu_trotmanger order by usu_id_rota desc');
  DmOra.ConsSql.Open;
  DmOra.ConsSql.First;
  if DmOra.ConsSql.IsEmpty then
     DmOra.Cadusu_tRotManGerUSU_ID_ROTA.AsInteger := 1
  else
     DmOra.Cadusu_tRotManGerUSU_ID_ROTA.AsInteger := DmOra.ConsSql.FieldByName('usu_id_rota').AsInteger + 1;
  DmOra.Cadusu_tRotManGerUSU_DESROT.Value := 'NOVO - SEM ROTA';
  DmOra.Cadusu_tRotManGer.Post;

   DmOra.Consusu_tRotMan.Close;
   DmOra.Consusu_tRotMan.Parameters.ParamByName('usu_id_rota').Value := DmOra.Cadusu_tRotManGerUSU_ID_ROTA.AsInteger;
   DmOra.Consusu_tRotMan.Open;
   DmOra.Consusu_tRotMan.First;

  vaUltimoTipoMov := '';
end;

procedure TFCadRoteiroManifestoUF.btnConsRotaClick(Sender: TObject);
begin
  FConsRota := TFConsRota.Create(Self);
  if FConsRota.ShowModal = mrOk then
     begin
        vnId_Rota := DmOra.ConsRotManGerUSU_ID_ROTA.AsInteger;

        DmOra.Cadusu_tRotManGer.Close;
        DmOra.Cadusu_tRotManGer.Parameters.ParamByName('usu_id_rota').Value := vnId_Rota;
        DmOra.Cadusu_tRotManGer.Open;

        DmOra.Consusu_tRotMan.Close;
        DmOra.Consusu_tRotMan.Parameters.ParamByName('usu_id_rota').Value := vnId_Rota;
        DmOra.Consusu_tRotMan.Open;

        if DmOra.Consusu_tRotMan.IsEmpty then
           begin
             vaUltimoTipoMov := '';
           end
        else
          begin
            DmOra.Consusu_tRotMan.Last;
            vaUltimoTipoMov := DmOra.Consusu_tRotManUSU_TIPMOV.Value;
            DmOra.Consusu_tRotMan.First;
          end;
     end;
  FreeAndNil(FConsRota);

end;

procedure TFCadRoteiroManifestoUF.dbedtUSU_DESROTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F3 then
     btnConsRota.Click;
end;

procedure TFCadRoteiroManifestoUF.dbg1CellClick(Column: TColumn);
begin
  if (not DmOra.Consusu_tRotMan.IsEmpty) and (dbg1.SelectedField.FieldName = 'img') then
      begin
        DmOra.Consusu_tRotMan.Next;
        if not DmOra.Consusu_tRotMan.Eof then
           begin
             DmOra.Consusu_tRotMan.Prior;
             Application.MessageBox('Só é possível excluir o ultimo na sequência','Aviso',MB_ICONWARNING+MB_OK);
             Abort;
           end;

        DmOra.Cadusu_tRotMan.Close;
        DmOra.Cadusu_tRotMan.Parameters.ParamByName('usu_id_rota').Value := DmOra.Consusu_tRotManUSU_ID_ROTA.AsInteger;
        DmOra.Cadusu_tRotMan.Parameters.ParamByName('usu_seqrot').Value := DmOra.Consusu_tRotManUSU_SEQROT.AsInteger;
        DmOra.Cadusu_tRotMan.Open;
        if not DmOra.Cadusu_tRotMan.IsEmpty then
           begin
             DmOra.Cadusu_tRotMan.Delete;

             DmOra.Consusu_tRotMan.Close;
             DmOra.Consusu_tRotMan.Parameters.ParamByName('usu_id_rota').Value := vnId_Rota;
             DmOra.Consusu_tRotMan.Open;
             DmOra.Consusu_tRotMan.First;

             DmOra.Cadusu_tRotManGer.Edit;
             DmOra.Cadusu_tRotManGerUSU_DESROT.Value := DmOra.Consusu_tRotManUSU_UFSPAS.AsString + '('+DmOra.Consusu_tRotManUSU_TIPMOV.AsString+')';
             DmOra.Consusu_tRotMan.Next;

             while not DmOra.Consusu_tRotMan.Eof do
               begin
                 DmOra.Cadusu_tRotManGerUSU_DESROT.Value := DmOra.Cadusu_tRotManGerUSU_DESROT.Value +' -- '+ DmOra.Consusu_tRotManUSU_UFSPAS.AsString + '('+DmOra.Consusu_tRotManUSU_TIPMOV.AsString+')';

                 DmOra.Consusu_tRotMan.Next;
               end;
             DmOra.Cadusu_tRotManGer.Post;
             DmOra.Consusu_tRotMan.First;

             if DmOra.Consusu_tRotMan.IsEmpty then
                 begin
                   vaUltimoTipoMov := '';
                 end
             else
                begin
                  DmOra.Consusu_tRotMan.Last;
                  vaUltimoTipoMov := DmOra.Consusu_tRotManUSU_TIPMOV.Value;
                  DmOra.Consusu_tRotMan.First;
                end;

           end;
      end;
end;

procedure TFCadRoteiroManifestoUF.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (Column.FieldName = 'img') and (not DmOra.Consusu_tRotMan.IsEmpty) then
    begin
      dbg1.Canvas.FillRect(Rect);
      ImageList1.Draw(dbg1.Canvas,Rect.Left+7,Rect.Top+1,12);



    end;
end;

procedure TFCadRoteiroManifestoUF.edtCEPExit(Sender: TObject);
begin
  if edtCEP.Value > 0 then
     begin
        DmOra.ConsCEP.Close;
        DmOra.ConsCEP.SQL.Clear;
        DmOra.ConsCEP.SQL.Add('select * from e008cep');
        DmOra.ConsCEP.SQL.Add(' where');
        DmOra.ConsCEP.SQL.Add(' cepini = :cepini or cepfim = :cepfim');
        DmOra.ConsCEP.Parameters.ParamByName('cepini').Value := edtCEP.Value;
        DmOra.ConsCEP.Parameters.ParamByName('cepfim').Value := edtCEP.Value;
        DmOra.ConsCEP.Open;
        if DmOra.ConsCEP.IsEmpty then
           begin
             Application.MessageBox('CEP não encontrado','Aviso',MB_ICONWARNING+MB_OK);
             edtUF.Clear;
             ActiveControl := edtCEP;
             Abort;
           end
        else
           begin
             edtUF.Text := DmOra.ConsCEPSIGUFS.Value;
           end;
     end;
end;

procedure TFCadRoteiroManifestoUF.edtCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F3 then
   btnConsCep.Click;
end;

procedure TFCadRoteiroManifestoUF.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;

if Key = #27 then
     begin
       Close;
     end;
end;

procedure TFCadRoteiroManifestoUF.FormShow(Sender: TObject);
begin
 DmOra.Cadusu_tRotManGer.Close;
 DmOra.Consusu_tRotMan.Close;
end;

end.
