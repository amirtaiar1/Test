unit DNT18751U2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UHPOFORM, Db, DBTables, Wwintl, ImgList, Menus, TB97Ctls, Buttons,
  DBSBtn, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, Wwdatsrc,
  Wwquery, wwQueryWorkFlow, uhpoquery, TrLight, Grids, Wwdbigrd, Wwdbgrid,
  kbmMemTable;

type
  TDNT18751F2 = class(THpoForm)
    pKopf: TPanel;
    Label1: TLabel;
    dbeAzModellAbk: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    hqryDNT18T75: THpoQuery;
    wwdsDNT18T75: TwwDataSource;
    HPODBTrafficLight1: THPODBTrafficLight;
    qryWork: TQuery;
    wwdbgDNT18T76: TwwDBGrid;
    wwdsDNT18T76: TwwDataSource;
    wwqryDNT18T76: TwwQuery;
    mtDNT18T76: TkbmMemTable;
    mtDNT18T76WOCHENTAGStr: TStringField;
    mtDNT18T76BEGINN_MIN: TDateTimeField;
    mtDNT18T76BEGINN_MAX: TDateTimeField;
    mtDNT18T76SYS_PK: TIntegerField;
    mtDNT18T76PAUSE1_VON: TDateTimeField;
    mtDNT18T76PAUSE1_BIS: TDateTimeField;
    mtDNT18T76PAUSE1_DAUER_SOLL: TIntegerField;
    mtDNT18T76PAUSE2_VON: TDateTimeField;
    mtDNT18T76PAUSE2_BIS: TDateTimeField;
    mtDNT18T76PAUSE2_DAUER_SOLL: TIntegerField;
    mtDNT18T76ENDE_MIN: TDateTimeField;
    mtDNT18T76ENDE_MAX: TDateTimeField;
    mtDNT18T76DAUER_SOLL: TIntegerField;
    mtDNT18T76DAUER_MIN: TIntegerField;
    mtDNT18T76DAUER_MAX: TIntegerField;
    mtDNT18T76DAUER_AUTOM_JN: TStringField;
    mtDNT18T76cBuchungsartBez: TStringField;
    mtDNT18T76FK_DNT18T70: TIntegerField;
    mtDNT18T76WOCHENTAG: TIntegerField;
    mtDNT18T76SYS_DEL: TStringField;
    mtDNT18T76SYS_KOC: TIntegerField;
    mtDNT18T76SYS_KLM: TIntegerField;
    mtDNT18T76SYS_DOC: TDateTimeField;
    mtDNT18T76SYS_DLM: TDateTimeField;
    mtDNT18T76cDauerVon: TFloatField;
    mtDNT18T76cDauerBis: TFloatField;
    mtDNT18T76cDauerSoll: TFloatField;
    qryDelete: TQuery;
    procedure DBEdit1Exit(Sender: TObject);
    procedure SaveButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
    procedure NewButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
    procedure dbeAzModellAbkExit(Sender: TObject);
    procedure hqryDNT18T75AfterOpen(DataSet: TDataSet);
    procedure hqryDNT18T75AfterCancel(DataSet: TDataSet);
    procedure hqryDNT18T75AfterPost(DataSet: TDataSet);
    procedure hqryDNT18T75AfterInsert(DataSet: TDataSet);
    procedure pKopfEnter(Sender: TObject);
    procedure wwdbgDNT18T76Enter(Sender: TObject);
    procedure DeleteButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
    procedure mtDNT18T76LoadRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure wwdbgDNT18T76KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwdbgDNT18T76DblClick(Sender: TObject);
    procedure mtDNT18T76AfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtDNT18T76CalcFields(DataSet: TDataSet);
    procedure wwdbgDNT18T76DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private-Deklarationen }
    procedure ZeigeGridDaten;
    procedure LeereGridDaten;
    procedure F2Aufruf(SysPk : Integer);
    procedure ChangeDataSource(DS: TDataSource);
    procedure FuelleMtDNT18T76Zusatz;
  public
    { Public-Deklarationen }
    procedure ShowModifyInfo;
    procedure FuelleMtDNT18T76Zeile(WOCHENTAG: Integer);
    procedure LoadAppIni; override;
    procedure SaveAppIni; override;
  end;

var
  DNT18751F2: TDNT18751F2;

implementation

{$R *.DFM}

uses
   GlobVarsImp, dbFuncs, HpoStamm, DateU1, DNT18751U3, HpoMessagesU1, IniFiles,
   StringU1, HpoGridFuncs;

procedure TDNT18751F2.DBEdit1Exit(Sender: TObject);
begin
   inherited;
   if (wwdsDNT18T75.State = dsInsert) or (wwdsDNT18T75.State = dsEdit) then
      SaveButton.Click;
end;

procedure TDNT18751F2.SaveButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
begin
   inherited;

   ActionIsDone := True;

   if SaveButton.DataSource = wwdsDNT18T75 then begin
      if hqryDNT18T75.FieldByName('AZ_MODELL_ABK').AsString = '' then begin
         siLangLinked.MessageDlg(Format(GetTranslationByID(2134), ['AZ-Modell-Abk.']),
            mtInformation, [mbOk], 0);
         dbeAzModellAbk.SetFocus;
         Exit;
      end;

      hqryDNT18T75.Post;
   end;
end;

procedure TDNT18751F2.NewButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
begin
   inherited;

   if NewButton.DataSource = wwdsDNT18T75 then begin
      dbeAzModellAbk.SetFocus;
   end;

   if NewButton.DataSource = wwdsDNT18T76 then begin
      ActionIsDone := True;
      F2Aufruf(-1);
   end;
end;

procedure TDNT18751F2.dbeAzModellAbkExit(Sender: TObject);
begin
   inherited;
   if dbeAzModellAbk.Text > '' then begin
      with qryWork, qryWork.SQL do begin
         Close;
         Clear;
         Add('select *');
         Add('from DNT18T75');
         Add('where DNT18T75.AZ_MODELL_ABK = ' + QuotedStr(dbeAzModellAbk.Text));
         Open;
      end;
      if not qryWork.Eof then begin
         hqryDNT18T75.Close;
         hqryDNT18T75.SysPK := qryWork.FieldByName('SYS_PK').AsInteger;
         hqryDNT18T75.Open;
      end;
      qryWork.Close;
   end;
end;

procedure TDNT18751F2.ShowModifyInfo;
var
   S1, S2:  String;
begin
   {if pKopf.Focused then
      GetRecordModificationInfo(hqryDNT18T75, S1, S2)
   else}
      GetRecordModificationInfo(mtDNT18T76, S1, S2);

   StatusBar.Panels[2].Text  := S1;
   StatusBar.Panels[3].Text  := S2;
end;

procedure TDNT18751F2.hqryDNT18T75AfterOpen(DataSet: TDataSet);
begin
   inherited;
   //ShowModifyInfo;
   ZeigeGridDaten;
end;

procedure TDNT18751F2.hqryDNT18T75AfterCancel(DataSet: TDataSet);
begin
   inherited;
   //ShowModifyInfo;
   ZeigeGridDaten;
end;

procedure TDNT18751F2.hqryDNT18T75AfterPost(DataSet: TDataSet);
begin
   inherited;
   //ShowModifyInfo;
end;

procedure TDNT18751F2.hqryDNT18T75AfterInsert(DataSet: TDataSet);
begin
   inherited;
   ShowModifyInfo;
   ZeigeGridDaten;
end;

procedure TDNT18751F2.LeereGridDaten;
begin
   mtDNT18T76.Close;
   mtDNT18T76.Open;
   mtDNT18T76.SortOn('', []);
   mtDNT18T76.Filter := '';
   mtDNT18T76.Filtered := False;
end;

procedure TDNT18751F2.ZeigeGridDaten;
var
   i: Integer;
begin
   LeereGridDaten;

   mtDNT18T76BEGINN_MIN.DisplayFormat := 'hh:nn';
   mtDNT18T76BEGINN_MAX.DisplayFormat := 'hh:nn';
   mtDNT18T76ENDE_MIN.DisplayFormat := 'hh:nn';
   mtDNT18T76ENDE_MAX.DisplayFormat := 'hh:nn';
   mtDNT18T76PAUSE1_VON.DisplayFormat := 'hh:nn';
   mtDNT18T76PAUSE1_BIS.DisplayFormat := 'hh:nn';
   mtDNT18T76PAUSE2_VON.DisplayFormat := 'hh:nn';
   mtDNT18T76PAUSE2_BIS.DisplayFormat := 'hh:nn';

   mtDNT18T76cDauerVon.DisplayFormat := '0.00';
   mtDNT18T76cDauerBis.DisplayFormat := '0.00';
   mtDNT18T76cDauerSoll.DisplayFormat := '0.00';

   with wwqryDNT18T76, wwqryDNT18T76.SQL do begin
      Close;
      Clear;
      Add('select *');
      Add('from DNT18T76');
      Add('where DNT18T76.FK_DNT18T75 = ' +
         IntToStr(hqryDNT18T75.FieldByName('SYS_PK').AsInteger));
      Open;
   end;
   mtDNT18T76.LoadFromDataSet(wwqryDNT18T76, []);

   for i := 1 to 7 do begin
      if (not mtDNT18T76.Locate('WOCHENTAG', i, [])) then begin
         mtDNT18T76.Append;
         mtDNT18T76SYS_PK.AsInteger := 0;
         mtDNT18T76WOCHENTAG.AsInteger := i;
         mtDNT18T76WOCHENTAGStr.AsString := GetWochentagUeberNummer(mtDNT18T76WOCHENTAG.AsInteger);
         mtDNT18T76.Post;
      end;
   end;

   mtDNT18T76.SortOn('WOCHENTAG', []);
   mtDNT18T76.First;
end;

procedure TDNT18751F2.mtDNT18T76LoadRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
   mtDNT18T76SYS_PK.AsInteger := wwqryDNT18T76.FieldByName('SYS_PK').AsInteger;
   FuelleMtDNT18T76Zusatz;
end;

procedure TDNT18751F2.FuelleMtDNT18T76Zusatz;
begin
   mtDNT18T76WOCHENTAGStr.AsString := GetWochentagUeberNummer(mtDNT18T76WOCHENTAG.AsInteger);

   mtDNT18T76cBuchungsartBez .AsString :=
      GetField(mtDNT18T76FK_DNT18T70.AsInteger, 'DNT18T70', 'BUCHUNGSART_BEZ');
end;

procedure TDNT18751F2.FuelleMtDNT18T76Zeile(WOCHENTAG: Integer);
begin
   with qryWork, qryWork.SQL do begin
      Close;
      Clear;
      Close;
      Clear;
      Add('select *');
      Add('from DNT18T76');
      Add('where DNT18T76.FK_DNT18T75 = ' + IntToStr(hqryDNT18T75.FieldByName('SYS_PK').AsInteger ));
      Add(' and DNT18T76.WOCHENTAG = ' + IntToStr(WOCHENTAG));
      Open;
   end;
   if mtDNT18T76.Locate('WOCHENTAG', qryWork.FieldByName('WOCHENTAG').AsInteger, []) then begin
      mtDNT18T76.Edit;
   end
   else begin
      mtDNT18T76.Insert;
   end;
   TransferFieldValues(qryWork, mtDNT18T76, False);
   mtDNT18T76SYS_PK.AsInteger := qryWork.FieldByName('SYS_PK').AsInteger;
   mtDNT18T76SYS_DEL.AsString := qryWork.FieldByName('SYS_DEL').AsString;
   mtDNT18T76SYS_DOC.AsDateTime := qryWork.FieldByName('SYS_DOC').AsDateTime;
   mtDNT18T76SYS_KOC.AsInteger := qryWork.FieldByName('SYS_KOC').AsInteger;
   mtDNT18T76SYS_DLM.AsDateTime := qryWork.FieldByName('SYS_DLM').AsDateTime;
   mtDNT18T76SYS_KLM.AsInteger := qryWork.FieldByName('SYS_KLM').AsInteger;
   FuelleMtDNT18T76Zusatz;
   mtDNT18T76.Post;
end;

procedure TDNT18751F2.F2Aufruf(SysPk: Integer);
var
   Wochentag: Integer;
begin
   if hqryDNT18T75.FieldByName('SYS_PK').AsInteger = 0 then
      Exit;

   try
  	   DNT18751F3 := TDNT18751F3.Create(Application);
      with DNT18751F3 do begin
         // Ist der übergebene SysPk = 0, so steht man auf dem entsprechenden
         // mtDNT18T76-Satz.
         // Hier handelt es sich um einen noch nicht angelegten DNT18T76-Satz
         // für den der entsprechende Wochentag an das nächste Formular übergeben
         // werden soll.
         if SysPk = 0 then
            Wochentag := mtDNT18T76WOCHENTAG.AsInteger
         else
            Wochentag := 0;

         ParameterInitialisierung(hqryDNT18T75.FieldByName('SYS_PK').AsInteger);

         if SysPk = 0 then
            SysPk := -1;

    	   hqryDNT18T76.Close;
         hqryDNT18T76.SysPK := SysPk;
         hqryDNT18T76.Open;
         if SysPk = -1 then begin
            hqryDNT18T76.Insert;

            if Wochentag > 0 then
               hqryDNT18T76.FieldByName('WOCHENTAG').AsInteger := Wochentag;
         end;

         ShowModal;

         // falls ein neuer Artikel angelegt wurde, bzw. ein
         // anderer aktiviert wurde
         if not hqryDNT18T76.Eof then begin
            //SysPk := hqryDNT18T76.FieldByName('SYS_PK').AsInteger;
            Wochentag := hqryDNT18T76.FieldByName('WOCHENTAG').AsInteger;
         end
         else
            Wochentag := 0;
      end;
   finally
  	   DNT18751F3.Release;
   end;

   if Wochentag > 0 then
      FuelleMtDNT18T76Zeile(Wochentag)
   else
      ZeigeGridDaten;
   ShowModifyInfo;
end;

procedure TDNT18751F2.ChangeDataSource(DS: TDataSource);
begin
   SaveButton.DataSource := DS;
   DeleteButton.DataSource := DS;
   CancelButton.DataSource := DS;
   NewButton.DataSource := ds;

   SaveButton.Enabled := True; // (DS = wwdsDNT18T75);
   CancelButton.Enabled := True; // (DS = wwdsDNT18T75);
   DeleteButton.Enabled := True; // (DS = wwdsDNT18T75);
   NewButton.Enabled := True;

   if NewButton.DataSource = wwdsDNT18T76 then
      NewButton.DisableReasons := NewButton.DisableReasons - [drReadOnly]
   else
      NewButton.DisableReasons := NewButton.DisableReasons + [drReadOnly];

   DateiCancel.Enabled := CancelButton.Enabled;
   DateiSave.Enabled := SaveButton.Enabled;
   DateiDelete.Enabled := DeleteButton.Enabled;
   DateiNew.Enabled := NewButton.Enabled;
end;

procedure TDNT18751F2.pKopfEnter(Sender: TObject);
begin
  inherited;
   ChangeDataSource(wwdsDNT18T75);
end;

procedure TDNT18751F2.wwdbgDNT18T76Enter(Sender: TObject);
begin
   inherited;
   ChangeDataSource(wwdsDNT18T76);
end;

procedure TDNT18751F2.DeleteButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
var
   s: String;
   Wochentag: Integer;
   WochentagStr: String;
begin
   inherited;
   ActionIsDone := True;

   if DeleteButton.DataSource = wwdsDNT18T75 then begin
      if hqryDNT18T75.FieldByName('SYS_DEL').AsString = 'F' then
         s := 'Soll das AZ-Modell als gelöscht gekennzeichnet werden?'
      else
         s := 'Soll das Löschkennzeichen entfernt werden?';
      if HpoMessageBox(GetTranslationByID(621), s,
         MB_ICONQUESTION+MB_DEFBUTTON2+MB_YESNO) = idYes then begin

         if (wwdsDNT18T75.State = dsBrowse) then
            hqryDNT18T75.Edit;

         hqryDNT18T75.FieldByName('SYS_DEL').AsBoolean :=
            not hqryDNT18T75.FieldByName('SYS_DEL').AsBoolean;
         SaveButton.Click;
      end;
   end;

   if DeleteButton.DataSource = wwdsDNT18T76 then begin
      if HpoMessageBox(GetTranslationByID(621), 'Sollen die Einstellungen für diesen Wochentag gelöscht werden?',
         MB_ICONQUESTION+MB_DEFBUTTON2+MB_YESNO) = idYes then begin

         with qryDelete, qryDelete.sql do begin
            Close;
            Clear;
            RequestLive := True;
            Add('delete from DNT18T76');
            Add('where DNT18T76.SYS_PK = ' +
               IntToStr(mtDNT18T76SYS_PK.AsInteger));
            ExecSQL;
            Close;
         end;

         Wochentag := mtDNT18T76WOCHENTAG.AsInteger;
         WochentagStr := mtDNT18T76WOCHENTAGStr.AsString;

         mtDNT18T76.Edit;
         mtDNT18T76BEGINN_MIN.AsVariant := Null;
         mtDNT18T76BEGINN_MAX.AsVariant := Null;
         mtDNT18T76PAUSE1_VON.AsVariant := Null;
         mtDNT18T76PAUSE1_BIS.AsVariant := Null;
         mtDNT18T76PAUSE1_DAUER_SOLL.AsVariant := Null;
         mtDNT18T76PAUSE2_VON.AsVariant := Null;
         mtDNT18T76PAUSE2_BIS.AsVariant := Null;
         mtDNT18T76PAUSE2_DAUER_SOLL.AsVariant := Null;
         mtDNT18T76ENDE_MIN.AsVariant := Null;;
         mtDNT18T76ENDE_MAX.AsVariant := Null;;
         mtDNT18T76DAUER_AUTOM_JN.AsString := 'F';
         mtDNT18T76DAUER_SOLL.AsVariant := Null;
         mtDNT18T76DAUER_MIN.AsVariant := Null;
         mtDNT18T76DAUER_MAX.AsVariant := Null;
         mtDNT18T76FK_DNT18T70.AsVariant := Null;
         mtDNT18T76.Post;
      end;

   end;
end;

procedure TDNT18751F2.wwdbgDNT18T76KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = VK_RETURN then
      F2Aufruf(mtDNT18T76SYS_PK.AsInteger);
end;

procedure TDNT18751F2.wwdbgDNT18T76DblClick(Sender: TObject);
begin
   inherited;
   F2Aufruf(mtDNT18T76SYS_PK.AsInteger);
end;

procedure TDNT18751F2.mtDNT18T76AfterScroll(DataSet: TDataSet);
begin
   inherited;
   ShowModifyInfo;
end;


procedure TDNT18751F2.FormCreate(Sender: TObject);
begin
   inherited;
   LeereGridDaten;
end;

procedure TDNT18751F2.FormShow(Sender: TObject);
var
   help  :  String;
begin
   inherited;
   help := Caption;
   Insert('/2',help,length(help));
   Caption := help;
end;

procedure TDNT18751F2.LoadAppIni;
var ini : TInifile;
    Formidx : String;
begin
  inherited;

   Formidx := RightStr(Name,3);
   ini := TIniFile.Create('C:\DAISY-NT\'+Leftstr(Name,8)+'.INI');
	Left   := ini.ReadInteger('Position'+Formidx, 'Left', 1);
	Top    := ini.ReadInteger('Position'+Formidx, 'Top', 1);
	Height := ini.ReadInteger('Position'+Formidx, 'Height', 200);
 	Width  := ini.ReadInteger('Position'+Formidx, 'Width', 600);
	ini.Free;
end;

procedure TDNT18751F2.SaveAppIni;
var ini : TInifile;
    Formidx : String;
begin
  inherited;

   Formidx := RightStr(Name,3);
   ini := TIniFile.Create('C:\DAISY-NT\'+Leftstr(Name,8)+'.INI');
   ini.WriteInteger('Position'+Formidx, 'Left', Left);
	ini.WriteInteger('Position'+Formidx, 'Top', Top);
	ini.WriteInteger('Position'+Formidx, 'Height', Height);
 	ini.WriteInteger('Position'+Formidx, 'Width', Width);
	ini.Free;
end;

procedure TDNT18751F2.mtDNT18T76CalcFields(DataSet: TDataSet);
begin
   inherited;
   mtDNT18T76cDauerVon.AsFloat := ConvTimeOut(mtDNT18T76DAUER_MIN.AsInteger, 11);
   mtDNT18T76cDauerBis.AsFloat := ConvTimeOut(mtDNT18T76DAUER_MAX.AsInteger, 11);
   mtDNT18T76cDauerSoll.AsFloat:= ConvTimeOut(mtDNT18T76DAUER_SOLL.AsInteger, 11);
end;

procedure TDNT18751F2.wwdbgDNT18T76DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   inherited;
   UnderlineActiveRow(wwdbgDNT18T76, Rect, Field, State);
end;

end.
