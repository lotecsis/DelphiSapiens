unit UConsultaTecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons, Grids, DBGrids;

type
  TFConsultaTecido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Ch100: TCheckBox;
    Ch200: TCheckBox;
    Ch300: TCheckBox;
    Ch400: TCheckBox;
    Ch600: TCheckBox;
    Ch700: TCheckBox;
    Label1: TLabel;
    EdDatIni: TDateEdit;
    EdDatFim: TDateEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Panel8: TPanel;
    BMostrar: TBitBtn;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultaTecido: TFConsultaTecido;

implementation

{$R *.dfm}

end.
