unit DNT18751U3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UHPOFORM, Db, DBTables, Wwintl, ImgList, Menus, TB97Ctls, Buttons,
  DBSBtn, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, Wwdatsrc, Wwquery, wwQueryWorkFlow, uhpoquery,
  wwdbdatetimepicker, DBCtrls, kbmMemTable, wwdblook;

type
  TDNT18751F3 = class(THpoForm)
    lWochentag: TLabel;
    wwdbcWochentag: TwwDBComboBox;
    Label2: TLabel;
    wwdbdBeginnMin: TwwDBDateTimePicker;
    hqryDNT18T76: THpoQuery;
    wwdsDNT18T76: TwwDataSource;
    Label3: TLabel;
    wwdbdBeginnMax: TwwDBDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    qryWork: TQuery;
    Label6: TLabel;
    wwdbdPause1Von: TwwDBDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    wwdbdPause1Bis: TwwDBDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    wwdbdPause2Von: TwwDBDateTimePicker;
    Label11: TLabel;
    Label12: TLabel;
    wwdbdPause2Bis: TwwDBDateTimePicker;
    Label13: TLabel;
    Label14: TLabel;
    dbePause1DauerSoll: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    dbePause2DauerSoll: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    wwdbdEndeMin: TwwDBDateTimePicker;
    Label19: TLabel;
    Label20: TLabel;
    wwdbdEndeMax: TwwDBDateTimePicker;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    hqryDNT18T76SYS_PK: TIntegerField;
    hqryDNT18T76SYS_DEL: TStringField;
    hqryDNT18T76SYS_STATE: TIntegerField;
    hqryDNT18T76SYS_DOC: TDateTimeField;
    hqryDNT18T76SYS_KOC: TIntegerField;
    hqryDNT18T76SYS_DLM: TDateTimeField;
    hqryDNT18T76SYS_KLM: TIntegerField;
    hqryDNT18T76FK_DNT18T75: TIntegerField;
    hqryDNT18T76WOCHENTAG: TIntegerField;
    hqryDNT18T76BEGINN_MIN: TDateTimeField;
    hqryDNT18T76BEGINN_MAX: TDateTimeField;
    hqryDNT18T76PAUSE1_VON: TDateTimeField;
    hqryDNT18T76PAUSE1_BIS: TDateTimeField;
    hqryDNT18T76PAUSE1_DAUER_SOLL: TIntegerField;
    hqryDNT18T76PAUSE2_VON: TDateTimeField;
    hqryDNT18T76PAUSE2_BIS: TDateTimeField;
    hqryDNT18T76PAUSE2_DAUER_SOLL: TIntegerField;
    hqryDNT18T76ENDE_MIN: TDateTimeField;
    hqryDNT18T76ENDE_MAX: TDateTimeField;
    hqryDNT18T76DAUER_SOLL: TIntegerField;
    hqryDNT18T76DAUER_MIN: TIntegerField;
    hqryDNT18T76DAUER_MAX: TIntegerField;
    hqryDNT18T76DAUER_AUTOM_JN: TStringField;
    hqryDNT18T76FK_DNT18T70: TIntegerField;
    mtDauer: TkbmMemTable;
    dbeDauerMin: TDBEdit;
    mtDauerDauerMin: TFloatField;
    mtDauerDauerMax: TFloatField;
    mtDauerDauerSoll: TFloatField;
    wwdsDauer: TwwDataSource;
    Label25: TLabel;
    dbeDauerMax: TDBEdit;
    dbeDauerSoll: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    dbcDauerAutomatischJn: TDBCheckBox;
    Label28: TLabel;
    wwdblcDNT18T70: TwwDBLookupCombo;
    eBuchungsartBez: TEdit;
    wwqryDNT18T70: TwwQuery;
    pKopieren: TPanel;
    gbKopieren: TGroupBox;
    cbMo: TCheckBox;
    cbDienstag: TCheckBox;
    cbMittwoch: TCheckBox;
    cbDonnerstag: TCheckBox;
    cbFreitag: TCheckBox;
    lMontag: TLabel;
    lDienstag: TLabel;
    lMittwoch: TLabel;
    lDonnerstag: TLabel;
    lFreitag: TLabel;
    bbKopieren: TBitBtn;
    procedure SaveButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
    procedure hqryDNT18T76AfterInsert(DataSet: TDataSet);
    procedure wwdbcWochentagExit(Sender: TObject);
    procedure DeleteButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure hqryDNT18T76AfterOpen(DataSet: TDataSet);
    procedure mtDauerDauerMinChange(Sender: TField);
    procedure mtDauerDauerMaxChange(Sender: TField);
    procedure mtDauerDauerSollChange(Sender: TField);
    procedure wwdblcDNT18T70DropDown(Sender: TObject);
    procedure wwdblcDNT18T70CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwdblcDNT18T70Exit(Sender: TObject);
    procedure hqryDNT18T76FK_DNT18T70Change(Sender: TField);
    procedure hqryDNT18T76AfterCancel(DataSet: TDataSet);
    procedure hqryDNT18T76AfterPost(DataSet: TDataSet);
    procedure wwdsDauerDataChange(Sender: TObject; Field: TField);
    procedure NewButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
  private
    { Private-Deklarationen }
     procedure ShowBuchungsart;
  public
    { Public-Deklarationen }
     FK_DNT18T75Glob: Integer;
     procedure ParameterInitialisierung(FK_DNT18T75: Integer);
     procedure LoadAppIni; override;
     procedure SaveAppIni; override;
     procedure ShowModifyInfo;
  end;

var
  DNT18751F3: TDNT18751F3;

implementation

{$R *.DFM}

{ TDNT18751F3 }

uses
   GlobVarsImp, HpoMessagesU1, IniFiles, StringU1, DateU1, dbFuncs, HpoStamm;

procedure TDNT18751F3.ParameterInitialisierung(FK_DNT18T75: Integer);
begin
   FK_DNT18T75Glob := FK_DNT18T75;
end;

procedure TDNT18751F3.SaveButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
begin
   inherited;

   ActionIsDone := True;

   //----------------------- Kontrollen -------------------------------------

   if hqryDNT18T76.FieldByName('WOCHENTAG').AsInteger = 0 then begin
      siLangLinked.MessageDlg(Format(GetTranslationByID(2134), ['Wochentag']),
         mtInformation, [mbOk], 0);
      wwdbcWochentag.SetFocus;
      Exit;
   end;

   if (hqryDNT18T76.FieldByName('DAUER_AUTOM_JN').AsString = 'T') and
      (hqryDNT18T76.FieldByName('FK_DNT18T70').AsInteger = 0) then begin
      MessageDlg('Bei automatischer Dauer müssen Sie eine Buchungsart erfassen.',
         mtInformation, [mbOk], 0);
      wwdblcDNT18T70.SetFocus;
      Exit;
   end;

   //----------------------- Speichern ---------------------------------------

   if hqryDNT18T76PAUSE1_DAUER_SOLL.IsNull then
      hqryDNT18T76PAUSE1_DAUER_SOLL.AsInteger := 0;
   if hqryDNT18T76PAUSE2_DAUER_SOLL.IsNull then
      hqryDNT18T76PAUSE2_DAUER_SOLL.AsInteger := 0;

   hqryDNT18T76.Post;
end;

procedure TDNT18751F3.hqryDNT18T76AfterInsert(DataSet: TDataSet);
begin
   inherited;
   hqryDNT18T76.FieldByName('FK_DNT18T75').AsInteger := FK_DNT18T75Glob;
   hqryDNT18T76.FieldByName('DAUER_AUTOM_JN').AsString := 'F';
   ShowBuchungsart;
   ShowModifyInfo;
end;

procedure TDNT18751F3.wwdbcWochentagExit(Sender: TObject);
begin
   inherited;

   if wwdbcWochentag.Text > '' then begin
      with qryWork, qryWork.SQL do begin
         Close;
         Clear;
         Add('select *');
         Add('from DNT18T76');
         Add('where DNT18T76.FK_DNT18T75 = ' + IntToStr(FK_DNT18T75Glob));
         Add(' and DNT18T76.WOCHENTAG = ' +
            IntToStr(hqryDNT18T76.FieldByName('WOCHENTAG').AsInteger));
         Open;
      end;
      if not qryWork.Eof then begin
         hqryDNT18T76.Close;
         hqryDNT18T76.SysPK := qryWork.FieldByName('SYS_PK').AsInteger;
         hqryDNT18T76.Open;
      end;
   end;
   if wwdbcWochentag.ItemIndex = 0 then begin
      cbMo.Enabled := false;
      lMontag.Font.Color := clBlue;
   end
   else if wwdbcWochentag.ItemIndex = 1 then begin
      cbDienstag.Enabled := false;
      lDienstag.Font.Color := clBlue;

   end
   else if wwdbcWochentag.ItemIndex = 2 then begin
      cbMittwoch.Enabled := false;
      lMittwoch.Font.Color := clBlue;
   end
   else if wwdbcWochentag.ItemIndex = 3 then begin
      cbDonnerstag.Enabled := false;
      lDonnerstag.Font.Color := clBlue;
   end
   else if wwdbcWochentag.ItemIndex = 4 then begin
      cbFreitag.Enabled := false;
      lFreitag.Font.Color := clBlue;
   end;

end;

procedure TDNT18751F3.DeleteButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
begin
   inherited;

   ActionIsDone := True;

   if HpoMessageBox(GetTranslationByID(621), 'Sollen die Einstellungen für diesen Wochentag gelöscht werden?',
      MB_ICONQUESTION+MB_DEFBUTTON2+MB_YESNO) = idYes then begin

      hqryDNT18T76.Delete;
      wwdbcWochentag.SetFocus;
   end;

end;

procedure TDNT18751F3.FormShow(Sender: TObject);
var
   help  :  String;
begin
   inherited;
   help := Caption;
   Insert('/3',help,length(help));
   Caption := help;

   wwqryDNT18T70.Close;
   wwqryDNT18T70.Open;
end;

procedure TDNT18751F3.LoadAppIni;
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

procedure TDNT18751F3.SaveAppIni;
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

procedure TDNT18751F3.hqryDNT18T76AfterOpen(DataSet: TDataSet);
var
   MerkeMtDauerMinOnChange,
   MerkeMtDauerMaxOnChange,
   MerkeMtDauerSollOnChange: TFieldNotifyEvent;
begin
   inherited;

   mtDauerDauerMin.DisplayFormat := '0.00';
   mtDauerDauerMax.DisplayFormat := '0.00';
   mtDauerDauerSoll.DisplayFormat := '0.00';

   MerkeMtDauerMinOnChange := mtDauerDauerMin.OnChange;
   MerkeMtDauerMaxOnChange := mtDauerDauerMax.OnChange;
   MerkeMtDauerSollOnChange := mtDauerDauerSoll.OnChange;
   try
      mtDauerDauerMin.OnChange := nil;
      mtDauerDauerMax.OnChange := nil;
      mtDauerDauerSoll.OnChange := nil;

      mtDauer.Close;
      mtDauer.Open;
      mtDauer.Insert;
      // Anzeige in Std., Min., Speichern in Min.
      mtDauerDauerMin.AsFloat := ConvTimeOut(hqryDNT18T76DAUER_MIN.AsInteger, 11);
      mtDauerDauerMax.AsFloat := ConvTimeOut(hqryDNT18T76DAUER_MAX.AsInteger, 11);
      mtDauerDauerSoll.AsFloat := ConvTimeOut(hqryDNT18T76DAUER_SOLL.AsInteger, 11);

   finally
      mtDauerDauerMin.OnChange := mtDauerDauerMinChange;
      mtDauerDauerMax.OnChange := mtDauerDauerMaxChange;
      mtDauerDauerSoll.OnChange := mtDauerDauerSollChange;
   end;

   ShowBuchungsart;

   ShowModifyInfo;
end;

procedure TDNT18751F3.mtDauerDauerMinChange(Sender: TField);
begin
   inherited;
   if (hqryDNT18T76.State <> dsEdit) or (hqryDNT18T76.State <> dsInsert) then
      hqryDNT18T76.Edit;

   // Anzeige in Std., Min., Speichern in Min.
   hqryDNT18T76DAUER_MIN.AsInteger := trunc(ConvTimeIn(mtDauerDauerMin.AsFloat, 11));
end;

procedure TDNT18751F3.mtDauerDauerMaxChange(Sender: TField);
begin
  inherited;

   if (hqryDNT18T76.State <> dsEdit) or (hqryDNT18T76.State <> dsInsert) then
      hqryDNT18T76.Edit;

   // Anzeige in Std., Min., Speichern in Min.
   hqryDNT18T76DAUER_MAX.AsInteger := trunc(ConvTimeIn(mtDauerDauerMax.AsFloat, 11));
end;

procedure TDNT18751F3.mtDauerDauerSollChange(Sender: TField);
begin
   inherited;

   if (hqryDNT18T76.State <> dsEdit) or (hqryDNT18T76.State <> dsInsert) then
      hqryDNT18T76.Edit;

   // Anzeige in Std., Min., Speichern in Min.
   hqryDNT18T76DAUER_SOLL.AsInteger := trunc(ConvTimeIn(mtDauerDauerSoll.AsFloat, 11));
end;

procedure TDNT18751F3.wwdblcDNT18T70DropDown(Sender: TObject);
begin
   inherited;
   wwqryDNT18T70.Filter := 'SYS_DEL <> ' + QuotedStr('T');
   wwqryDNT18T70.Filtered := True;
end;

procedure TDNT18751F3.wwdblcDNT18T70CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
   inherited;
   wwqryDNT18T70.Filter := '';
   wwqryDNT18T70.Filtered := True;
end;

procedure TDNT18751F3.wwdblcDNT18T70Exit(Sender: TObject);
begin
   inherited;

   if (wwdsDNT18T76.State = dsInsert) or (wwdsDNT18T76.State = dsEdit) then
      SaveButton.Click;
end;

procedure TDNT18751F3.ShowBuchungsart;
begin
   if hqryDNT18T76.FieldByName('FK_DNT18T70').AsInteger = 0 then begin
      eBuchungsartBez.Text := '';
   end
   else begin
      eBuchungsartBez.Text :=
         GetField(hqryDNT18T76.FieldByName('FK_DNT18T70').AsInteger,
            'DNT18T70', 'BUCHUNGSART_BEZ');
   end;
end;

procedure TDNT18751F3.hqryDNT18T76FK_DNT18T70Change(Sender: TField);
begin
   inherited;
   ShowBuchungsart;
end;

procedure TDNT18751F3.ShowModifyInfo;
var
   S1, S2:  String;
begin
   GetRecordModificationInfo(hqryDNT18T76, S1, S2);
   StatusBar.Panels[2].Text  := S1;
   StatusBar.Panels[3].Text  := S2;

end;

procedure TDNT18751F3.hqryDNT18T76AfterCancel(DataSet: TDataSet);
begin
   inherited;
   ShowBuchungsart;
   ShowModifyInfo;
end;

procedure TDNT18751F3.hqryDNT18T76AfterPost(DataSet: TDataSet);
begin
   inherited;
   ShowBuchungsart;
   ShowModifyInfo;
end;

procedure TDNT18751F3.wwdsDauerDataChange(Sender: TObject; Field: TField);
begin
   inherited;
{   hqryDNT18T76WOCHENTAG.ReadOnly := (hqryDNT18T76WOCHENTAG.AsInteger > 0);

   if hqryDNT18T76WOCHENTAG.ReadOnly then begin
      lWochentag.Font.Color := clBlue;
      wwdbcWochentag.Font.Color := clBlue;
   end
   else begin
      lWochentag.Font.Color := clWindowText;
      wwdbcWochentag.Font.Color := clWindowText;
   end;}
end;

procedure TDNT18751F3.NewButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
begin
   inherited;
   wwdbcWochentag.SetFocus;
end;



end.
