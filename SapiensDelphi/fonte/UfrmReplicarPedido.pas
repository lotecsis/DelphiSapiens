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
    procedure btnMostrarClick(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure edtNumPedKeyPress(Sender: TObject; var Key: Char);
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
           dmPrototipo.CadE120Ped.Post;


            ConsE120Ipd.Close;
            ConsE120Ipd.Parameters.ParamByName('NUMPED').Value := StrToInt(edtNumPed.Text);
            ConsE120Ipd.Open;
            ConsE120Ipd.First;
            while not ConsE120Ipd.Eof do
              begin
                  dmPrototipo.CadE120Ipd.Close;
                  dmPrototipo.CadE120Ipd.Parameters.ParamByName('numped').Value := ConsE120Ipd.FieldByName('numped').Value;
                  dmPrototipo.CadE120Ipd.Parameters.ParamByName('numped').Value := ConsE120Ipd.FieldByName('seqipd').Value;
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

end.
