library DNT18751;

{ Wichtiger Hinweis zur DLL-Speicherverwaltung: ShareMem mu� sich in der
  ersten Unit der unit-Klausel der Bibliothek und des Projekts befinden (Projekt-
  Quelltext anzeigen), falls die DLL Prozeduren oder Funktionen exportiert, die
  Strings als Parameter oder Funktionsergebnisse weitergibt. Dies trifft auf alle
  Strings zu, die von oder zur DLL weitergegeben werden -- auch diejenigen, die
  sich in Records oder Klassen befinden. ShareMem ist die Schnittstellen-Unit
  zu BORLNDMM.DLL, der gemeinsamen Speicherverwaltung, die zusammen mit
  der DLL weitergegeben werden mu�. Um die Verwendung von BORLNDMM.DLL
  zu vermeiden, sollten String-Informationen als PChar oder ShortString �bergeben werden. }

uses
  SysUtils,
  Classes,
  GlobVarsImp,
  Forms,
  Uhpoform in '..\..\COMPLIB\UHPOFORM.pas' {HpoForm},
  DNT18751U1 in 'DNT18751U1.pas' {DNT18751F1},
  DNT18751U2 in 'DNT18751U2.pas' {DNT18751F2},
  DNT18751U3 in 'DNT18751U3.pas' {DNT18751F3};

{$R *.RES}

function CreateForms : Pointer;
begin
   LoadGlobVars;
   DNT18751F1 := TDNT18751F1.Create(Application.MainForm);
   Result := DNT18751F1;
end;

procedure FreeForms;
begin
   DNT18751F1.Free;
   UnloadGlobVars;
end;


exports
   CreateForms,
   FreeForms;

begin
end.
