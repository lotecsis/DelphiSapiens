unit UfrmReplicarPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TfrmReplicarPedido = class(TForm)
    edtNumPed: TEdit;
    lbl1: TLabel;
    btnMostrar: TBitBtn;
    ConsE120Ped: TADOQuery;
    ConsE120Ipd: TADOQuery;
    dsConsE120Ped: TDataSource;
    dbgrd1: TDBGrid;
    dsConsE120Ipd: TDataSource;
    dbgrd2: TDBGrid;
    btnProcessar: TBitBtn;
    ConsE120Rat: TADOQuery;
    ConsE120Obs: TADOQuery;
    procedure btnMostrarClick(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure edtNumPedKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReplicarPedido: TfrmReplicarPedido;

implementation

uses UDmOra, UdmPrototipo;

{$R *.dfm}

procedure TfrmReplicarPedido.btnMostrarClick(Sender: TObject);
var i : Integer;
begin

 if Trim(edtNumPed.Text) = '' then
    begin
      Application.MessageBox('Informe o pedido','Aviso',MB_ICONWARNING+MB_OK);
      ActiveControl := edtNumPed;
      Abort;
    end;

 ConsE120Ped.Close;
 ConsE120Ped.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
 ConsE120Ped.Open;
 if NOT ConsE120Ped.IsEmpty then
   begin

      ConsE120Ipd.Close;
      ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
      ConsE120Ipd.Open;

   end
 else
   begin
     ConsE120Ipd.Close;
     Application.MessageBox('Pedido não encontrado','Aviso',MB_ICONWARNING+MB_OK);
   end;

end;


procedure TfrmReplicarPedido.btnProcessarClick(Sender: TObject);
var i : Integer;
begin

 if Trim(edtNumPed.Text) = '' then
    begin
      Application.MessageBox('Informe o pedido','Atenção',MB_ICONWARNING+MB_OK);
      ActiveControl := edtNumPed;
      Abort;
    end;

 if ConsE120Ped.IsEmpty then
    begin
      Application.MessageBox('Informe o pedido','Atenção',MB_ICONWARNING+MB_OK);
      ActiveControl := edtNumPed;
      Abort;
    end;

 if ConsE120Ipd.IsEmpty then
    begin
      Application.MessageBox('Não existe produtos para processar','Atenção',MB_ICONWARNING+MB_OK);
      ActiveControl := edtNumPed;
      Abort;
    end;

 ConsE120Ped.Close;
 ConsE120Ped.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
 ConsE120Ped.Open;
 if NOT ConsE120Ped.IsEmpty then
   begin

      dmPrototipo.CadE120Ped.Close;
      dmPrototipo.CadE120Ped.Parameters.ParamByName('numped').Value := StrToInt(edtNumPed.Text);
      dmPrototipo.CadE120Ped.Open;
      if dmPrototipo.CadE120Ped.IsEmpty then
         begin
           dmPrototipo.CadE120Ped.Insert;
           for I := 0 to ConsE120Ped.Fields.Count -1 do
              begin
                 if ConsE120Ped.Fields[i].FieldName <> 'NOMCLI' then
                    begin
                      dmPrototipo.CadE120Ped.FieldByName(ConsE120Ped.Fields[i].FieldName).Value := ConsE120Ped.Fields[i].Value;
                    end;
              end;

           dmPrototipo.ConsE085Cli.Close;
           dmPrototipo.ConsE085Cli.Parameters.ParamByName('CODCLI').Value := dmPrototipo.CadE120Ped.FieldByName('CODCLI').Value;
           dmPrototipo.ConsE085Cli.Open;
           if dmPrototipo.ConsE085Cli.IsEmpty then
              begin
                dmPrototipo.CadE120Ped.FieldByName('CODCLI').Value := 1;
              end;
           try
             dmPrototipo.CadE120Ped.Post;
           except
              on E : Exception do
                 ShowMessage(E.ClassName+'  '+E.Message);
           end;

           dmPrototipo.CadE120Ped.Edit;
           dmPrototipo.CadE120Ped.FieldByName('USU_PRECAR').Value := 0;
           dmPrototipo.CadE120Ped.Post;

            //------------itens do pedido------------
            ConsE120Ipd.Close;
            ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
            ConsE120Ipd.Open;
            ConsE120Ipd.First;
            while not ConsE120Ipd.Eof do
              begin
                  dmPrototipo.CadE120Ipd.Close;
                  dmPrototipo.CadE120Ipd.Parameters.ParamByName('numped').Value := ConsE120Ipd.FieldByName('numped').Value;
                  dmPrototipo.CadE120Ipd.Parameters.ParamByName('seqipd').Value := ConsE120Ipd.FieldByName('seqipd').Value;
                  dmPrototipo.CadE120Ipd.Open;
                  if dmPrototipo.CadE120Ipd.IsEmpty then
                     begin
                       dmPrototipo.CadE120Ipd.Insert;
                       for I := 0 to ConsE120Ipd.Fields.Count -1 do
                          begin
                            dmPrototipo.CadE120Ipd.FieldByName(ConsE120Ipd.Fields[i].FieldName).Value := ConsE120Ipd.Fields[i].Value;
                          end;
                       dmPrototipo.CadE120Ipd.Post;
                     end;

                ConsE120Ipd.Next;
              end;

              //---------rateio-----------------
            ConsE120Rat.Close;
            ConsE120Rat.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
            ConsE120Rat.Open;
            ConsE120Rat.First;
            while not ConsE120Rat.Eof do
              begin
                  dmPrototipo.CadE120Rat.Close;
                  dmPrototipo.CadE120Rat.Parameters.ParamByName('numped').Value := ConsE120Rat.FieldByName('numped').Value;
                  dmPrototipo.CadE120Rat.Parameters.ParamByName('seqrat').Value := ConsE120Rat.FieldByName('seqrat').Value;
                  dmPrototipo.CadE120Rat.Open;
                  if dmPrototipo.CadE120Rat.IsEmpty then
                     begin
                       dmPrototipo.CadE120Rat.Insert;
                       for I := 0 to ConsE120Rat.Fields.Count -1 do
                          begin
                            dmPrototipo.CadE120Rat.FieldByName(ConsE120Rat.Fields[i].FieldName).Value := ConsE120Rat.Fields[i].Value;
                          end;
                       dmPrototipo.CadE120Rat.Post;
                     end;

                  ConsE120Rat.Next;
              end;

              //--------------observações----------------
            ConsE120Obs.Close;
            ConsE120Obs.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
            ConsE120Obs.Open;
            ConsE120Obs.First;
            while not ConsE120Obs.Eof do
              begin
                  dmPrototipo.CadE120Obs.Close;
                  dmPrototipo.CadE120Obs.Parameters.ParamByName('numped').Value := ConsE120Obs.FieldByName('numped').Value;
                  dmPrototipo.CadE120Obs.Parameters.ParamByName('seqobs').Value := ConsE120Obs.FieldByName('seqobs').Value;
                  dmPrototipo.CadE120Obs.Open;
                  if dmPrototipo.CadE120Obs.IsEmpty then
                     begin
                       dmPrototipo.CadE120Obs.Insert;
                       for I := 0 to ConsE120Obs.Fields.Count -1 do
                          begin
                            dmPrototipo.CadE120Obs.FieldByName(ConsE120Obs.Fields[i].FieldName).Value := ConsE120Obs.Fields[i].Value;
                          end;
                       dmPrototipo.CadE120Obs.Post;
                     end;

                  ConsE120Obs.Next;
              end;

              Application.MessageBox('Processado com sucesso!!','Confirmação',MB_ICONWARNING+MB_OK);
         end
      else
         begin
           Application.MessageBox('Este pedido já foi replicado!','Aviso',MB_ICONWARNING+MB_OK);
         end;
   end
 else
   begin
     Application.MessageBox('Pedido não encontrado','Aviso',MB_ICONWARNING+MB_OK);
   end;
end;

procedure TfrmReplicarPedido.edtNumPedKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#48..#57]) and not (key in [#8])
      and not (key in [#240]) then
      key := #0;
end;

procedure TfrmReplicarPedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      key := #0;
      Perform (Wm_NextDlgCtl,0,0);
    end;
end;

end.
