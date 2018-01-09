program PServerRep;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDmOra in 'UDmOra.pas' {DmOra: TDataModule},
  UDmFire in 'UDmFire.pas' {DmFire: TDataModule},
  UCadUsuarios in 'UCadUsuarios.pas' {FCadUsuarios},
  UDmFireRep in 'UDmFireRep.pas' {DmFireRep: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDmOra, DmOra);
  Application.CreateForm(TDmFire, DmFire);
  Application.CreateForm(TFCadUsuarios, FCadUsuarios);
  Application.CreateForm(TDmFireRep, DmFireRep);
  Application.Run;
end.
