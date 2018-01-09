unit UPainelControleRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, OleCtrls, SHDocVw, Mask,
  rxToolEdit, DateUtils, rxCurrEdit, Grids, DBGrids;

type
  TFPainelControleRep = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    btn1: TBitBtn;
    btn2: TBitBtn;
    ts2: TTabSheet;
    wb1: TWebBrowser;
    btn3: TBitBtn;
    btn4: TBitBtn;
    edtDatAtu: TDateEdit;
    edtDatFim: TDateEdit;
    btn5: TBitBtn;
    edtDatIni: TDateEdit;
    dbg1: TDBGrid;
    Label5: TLabel;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnl2: TPanel;
    Label10: TLabel;
    pnl3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    pnl4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure MostraMensagemTeste(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FPainelControleRep: TFPainelControleRep;

implementation

{$R *.dfm}

procedure TFPainelControleRep.MostraMensagemTeste(Sender: TObject);
begin
  ShowMessage('O nome desse botão é teste');
end;

procedure TFPainelControleRep.btn1Click(Sender: TObject);
var
  LCategoryPanelGroup: TCategoryPanelGroup;
  LPanel: TCategoryPanel;
  LEdit : TEdit;
  LBotao : TBitBtn;
  I, K: Integer;

begin

  {LCategoryPanelGroup := TCategoryPanelGroup.Create(FPainelControleRep);
  LCategoryPanelGroup.Align := alClient;
  LCategoryPanelGroup.Name := 'CategoryPanelGroup';
  LCategoryPanelGroup.Parent := LCategoryPanelGroup;}
  {K :=  1;
  for I := 1 to 20 do
  begin

    LPanel         := TCategoryPanel.Create(FPainelControleRep);
    LPanel.Width   := 198;
    LPanel.Height  := 200;
    LPanel.Top     := I * 200;
    LPanel.Name    := 'CategoryPanel'+IntToStr(I);
    LPanel.Caption := 'Caption '+IntToStr(I);
    LPanel.PanelGroup:=CategoryPanelGroup;

      {******************************************************
         criação os componentes  dentro do CategoryPanel
       *****************************************************}
     { LEdit         := TEdit.Create(FPainelControleRep);
      LEdit.Width   := 70;
      LEdit.Height  := 20;
      LEdit.Top     := 30;
      LEdit.Name    := 'LEdit'+IntToStr(K);
      LEdit.Text    := 'Text '+IntToStr(K);
      LEdit.Parent  := LPanel;

      LBotao := TBitBtn.Create(FPainelControleRep);
      with LBotao do
        begin
          LBotao.Width := 100;
          LBotao.Height := 25;
          LBotao.Top :=  57;
          LBotao.Name    := 'Botao'+IntToStr(K);
          LBotao.Caption    := 'Botao'+IntToStr(K);
          LBotao.Parent := LPanel;
          LBotao.OnClick := MostraMensagemTeste;
        end;

    LPanel.Collapsed := True;
    Inc(K);
  end; }

end;

procedure TFPainelControleRep.btn2Click(Sender: TObject);
Var
 LPanel : TCategoryPanel;
begin
 {LPanel:=TCategoryPanel.Create(CategoryPanelGroup);
 LPanel.Caption:='My Panel';
 LPanel.PanelGroup:=CategoryPanelGroup;}
end;

procedure TFPainelControleRep.btn3Click(Sender: TObject);
begin
wb1.Navigate('https://mapsengine.google.com/map/edit?mid=zRHKUEVloftU.keR8ZrLl3Ymw&authuser=0&hl=pt-BR');
end;

procedure TFPainelControleRep.btn4Click(Sender: TObject);
VAR i : Integer;
begin
 Panel1DblClick(Sender);
end;

procedure TFPainelControleRep.btn5Click(Sender: TObject);
begin
  edtDatIni.Date := StartOfTheWeek(edtDatAtu.Date);
  edtDatFim.Date := EndOfTheWeek(edtDatAtu.Date);
end;

procedure TFPainelControleRep.Panel1DblClick(Sender: TObject);
begin
ShowMessage('1');
end;

end.
