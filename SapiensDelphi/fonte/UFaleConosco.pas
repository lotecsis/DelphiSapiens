unit UFaleConosco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, DB, StdCtrls, Buttons, RbDrawCore,
  RbButton, Mask, rxToolEdit;

type
  TFFaleConosco = class(TForm)
    BPesquisa: TSpeedButton;
    LDescricaoPesquisa: TLabel;
    FiltroPesquisa: TListBox;
    DSBrig: TDataSource;
    DBEGrig: TRxDBGrid;
    Data1: TDateEdit;
    Data2: TDateEdit;
    EdPesquisa: TEdit;
    BApagar: TRbButton;
    procedure FiltroPesquisaClick(Sender: TObject);
    procedure EdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure BPesqDiversasClick(Sender: TObject);
    procedure DBEGrigDblClick(Sender: TObject);
    procedure DBEGrigKeyPress(Sender: TObject; var Key: Char);
    procedure DBEGrigEnter(Sender: TObject);
    procedure DBEGrigExit(Sender: TObject);
    procedure DBEGrigDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFaleConosco: TFFaleConosco;

implementation

uses UDataModule1, UDataModule3, UConsSimpCidade, UConsSimpPJuridica,
  UDataModule6, UFaleConscoVisualiza, UPrincipal;

{$R *.dfm}

procedure TFFaleConosco.FiltroPesquisaClick(Sender: TObject);
begin
EdPesquisa.Clear;
Data1.Clear;
Data2.Clear;
DataModule3.IBQConsSimpPedido.Close;

if FiltroPesquisa.ItemIndex = 0 then
  begin
      DataModule6.IBQConsFaleConosco.Close;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;

      BPesquisa.Left := 544;
      BPesquisa.Click;
      BPesquisa.Visible := false;
  end
else
  if FiltroPesquisa.ItemIndex = 1 then
    begin
      DataModule6.IBQConsFaleConosco.Close;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;

      BPesquisa.Left := 544;
      BPesquisa.Click;
      BPesquisa.Visible := false;

    end
  else
    if FiltroPesquisa.ItemIndex = 2 then
      begin
      DataModule6.IBQConsFaleConosco.Close;
      BPesquisa.Left := 320;
      BPesquisa.Visible := true;

      EdPesquisa.Top := 0;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 40;
      Data1.Left := 192;
      Data1.Visible := true;
      Data1.SetFocus;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;
    end
  else
    if FiltroPesquisa.ItemIndex = 3 then
      begin
      DataModule6.IBQConsFaleConosco.Close;
      BPesquisa.Left := 456;
      BPesquisa.Visible := true;
      
      EdPesquisa.Top := 0;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := false;

      Data1.Top := 40;
      Data1.Left := 192;
      Data1.Visible := true;

      Data2.Top := 40;
      Data2.Left := 328;
      Data2.Visible := true;

      Data1.SetFocus;
    end
 else
    if FiltroPesquisa.ItemIndex = 4 then
      begin
      DataModule6.IBQConsFaleConosco.Close;
      BPesquisa.Left := 528;
      BPesquisa.Visible := true;

      EdPesquisa.Top := 40;
      EdPesquisa.Left := 192;
      EdPesquisa.Visible := true;

      Data1.Top := 0;
      Data1.Left := 192;
      Data1.Visible := false;

      Data2.Top := 0;
      Data2.Left := 328;
      Data2.Visible := false;

      EdPesquisa.SetFocus;
    end;

end;

procedure TFFaleConosco.EdPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
{if FiltroPesquisa.ItemIndex = 1 then
  begin
    if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
  end;}
end;

procedure TFFaleConosco.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFFaleConosco.BCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFFaleConosco.FormShow(Sender: TObject);
begin
FiltroPesquisa.ItemIndex := 0;
FiltroPesquisaClick(Sender);
end;

procedure TFFaleConosco.BPesquisaClick(Sender: TObject);
begin
   DataModule6.IBQConsFaleConosco.Close;
   DataModule6.IBQConsFaleConosco.SQL.Clear;
   DataModule6.IBQConsFaleConosco.SQL.Add('select fale.cd_mensagem,fale.mensagem,fale.nome,fale.telefone,');
   DataModule6.IBQConsFaleConosco.SQL.Add('fale.email,fale.dt_mensagem,fale.situacao,');
   DataModule6.IBQConsFaleConosco.SQL.Add('fale.aberta_por,usu.nm_usuario');
   DataModule6.IBQConsFaleConosco.SQL.Add('from');
   DataModule6.IBQConsFaleConosco.SQL.Add('FALE_CONOSCO fale');
   DataModule6.IBQConsFaleConosco.SQL.Add('left join USUARIO usu on usu.cd_usuario = fale.aberta_por');
   DataModule6.IBQConsFaleConosco.SQL.Add('where');
   if FiltroPesquisa.ItemIndex = 0 then
    begin
      DataModule6.IBQConsFaleConosco.SQL.Add('fale.situacao = ''F''');
    end
   else
   if FiltroPesquisa.ItemIndex = 1 then
    begin
      DataModule6.IBQConsFaleConosco.SQL.Add('fale.situacao = ''A''');
    end
   else
   if FiltroPesquisa.ItemIndex = 2 then
    begin
      DataModule6.IBQConsFaleConosco.SQL.Add('fale.dt_mensagem = :pdata');
    end
   else
   if FiltroPesquisa.ItemIndex = 3 then
    begin
      DataModule6.IBQConsFaleConosco.SQL.Add('fale.dt_mensagem between :pdata1 and :pdata2');
      DataModule6.IBQConsFaleConosco.ParamByName('pdata1').AsDate := Data1.Date;
      DataModule6.IBQConsFaleConosco.ParamByName('pdata2').AsDate := Data2.Date;
    end
   else
   if FiltroPesquisa.ItemIndex = 4 then
    begin
      DataModule6.IBQConsFaleConosco.SQL.Add('fale.nome LIKE'+QuotedStr('%'+EdPesquisa.Text+'%'));
    end;

   DataModule6.IBQConsFaleConosco.Open;
end;

procedure TFFaleConosco.BPesqDiversasClick(Sender: TObject);
begin
  if FiltroPesquisa.ItemIndex = 2 then
    begin
      FConsSimpCidade := TFConsSimpCidade.Create(Self);
      if FConsSimpCidade.ShowModal = mrOk then
        begin
          EdPesquisa.Text := DataModule1.IBQConsultaCidadeNM_CIDADE.AsString;
        end;
      FreeAndNil(FConsSimpCidade);
    end
  else
  if (FiltroPesquisa.ItemIndex = 0)or(FiltroPesquisa.ItemIndex = 1) then
    begin
      FConsSimpPJuridica := TFConsSimpPJuridica.Create(Self);
      if FConsSimpPJuridica.ShowModal = mrOk then
        begin
          EdPesquisa.Text := DataModule3.IBQGeralPessoaRZ_SOCIAL.AsString;
        end;
      FreeAndNil(FConsSimpPJuridica);
    end;
end;

procedure TFFaleConosco.DBEGrigDblClick(Sender: TObject);
begin
  FFaleConoscoVisualiza := TFFaleConoscoVisualiza.Create(Self);
  FFaleConoscoVisualiza.ShowModal;
  FreeAndNil(FFaleConoscoVisualiza);

  if DataModule6.IBQConsFaleConoscoSITUACAO.AsString = 'F' then
  begin
  DataModule6.IBDFaleConosco.Close;
  DataModule6.IBDFaleConosco.ParamByName('pmensagem').AsInteger :=
  DataModule6.IBQConsFaleConoscoCD_MENSAGEM.AsInteger;
  DataModule6.IBDFaleConosco.Open;
  DataModule6.IBDFaleConosco.Edit;
  DataModule6.IBDFaleConoscoSITUACAO.AsString := 'A';
  DataModule6.IBDFaleConoscoABERTA_POR.AsInteger := FPrincipal.cd_usuario;
  DataModule6.IBDFaleConosco.Post;
  DataModule1.IBTTransacao.CommitRetaining;

  FiltroPesquisa.ItemIndex := 0;
  FiltroPesquisaClick(Sender);

  end;

end;

procedure TFFaleConosco.DBEGrigKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       DBEGrigDblClick(Sender);
    end;
end;

procedure TFFaleConosco.DBEGrigEnter(Sender: TObject);
begin
  KeyPreview := false;
end;

procedure TFFaleConosco.DBEGrigExit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TFFaleConosco.DBEGrigDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DataModule6.IBQConsFaleConosco.FieldByName('situacao').Value = 'F' then
    begin
      DBEGrig.Canvas.brush.Color := $0080FFFF;
      DBEGrig.Canvas.Font.Color := clBlack;
      DBEGrig.DefaultDrawDataCell(Rect,DBEGrig.Columns[Datacol].Field,state);
    end;
end;

procedure TFFaleConosco.BApagarClick(Sender: TObject);
begin
if DataModule6.IBQConsFaleConoscoSITUACAO.AsString = 'F' then
  begin
    MessageDlg('N�o � poss�vel excluir mensagem fechada!',mtInformation,[mbok],0);

  end
else
  begin
  DataModule6.IBDFaleConosco.Close;
  DataModule6.IBDFaleConosco.ParamByName('pmensagem').AsInteger :=
  DataModule6.IBQConsFaleConoscoCD_MENSAGEM.AsInteger;
  DataModule6.IBDFaleConosco.Open;

  DataModule6.IBDFaleConosco.Delete;
  DataModule1.IBTTransacao.Commit;

  FiltroPesquisa.ItemIndex := 1;
  FiltroPesquisaClick(Sender);
  end;
end;

end.
