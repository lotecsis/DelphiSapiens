program PServerEmail;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDmOra in 'UDmOra.pas' {DmOra: TDataModule},
  UDmFire in 'UDmFire.pas' {DmFire: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDmOra, DmOra);
  Application.CreateForm(TDmFire, DmFire);
  Application.Run;
end.
