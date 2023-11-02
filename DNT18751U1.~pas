unit DNT18751U1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UHPOFORM, Db, DBTables, Wwintl, ImgList, Menus, TB97Ctls, Buttons,
  DBSBtn, ComCtrls, ToolWin, ExtCtrls, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, HpoGridFuncs, kbmMemTable, dbFuncs;

type
  TDNT18751F1 = class(THpoForm)
    wwdbgDNT18T75: TwwDBGrid;
    wwdsDNT18751: TwwDataSource;
    wwqryDNT18751: TwwQuery;
    mtDNT18T75: TkbmMemTable;
    mtDNT18T75SYS_PK: TIntegerField;
    mtDNT18T75SYS_DEL: TStringField;
    mtDNT18T75SYS_KOC: TIntegerField;
    mtDNT18T75SYS_KLM: TIntegerField;
    mtDNT18T75SYS_DOC: TDateTimeField;
    mtDNT18T75SYS_DLM: TDateTimeField;
    mtDNT18T75AZ_MODELL_ABK: TStringField;
    mtDNT18T75AZ_MODELL_BEZ: TStringField;
    procedure wwdbgDNT18T75CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure miShowMode1Click(Sender: TObject);
    procedure miShowMode2Click(Sender: TObject);
    procedure miShowMode3Click(Sender: TObject);
    procedure mtDNT18T75LoadRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure mtDNT18T75AfterScroll(DataSet: TDataSet);
    procedure NewButtonBeforeAction(Sender: TObject;
      var ActionIsDone: Boolean);
    procedure wwdbgDNT18T75KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwdbgDNT18T75DblClick(Sender: TObject);
  private
    { Private-Deklarationen }

    miShowMode: THpoTableShowMode;

    procedure SetzeFilter;
    procedure ShowModifyInfo;
    procedure F2Aufruf(SysPk : Integer);
    procedure FuelleMtDNT18T75(SysPk: Integer);
  public
    { Public-Deklarationen }
    procedure SetupForm; override;
  end;

var
  DNT18751F1: TDNT18751F1;

implementation

{$R *.DFM}

uses
   HpoStamm, DNT18751U2;

procedure TDNT18751F1.SetupForm;
begin
  inherited;

   FuelleMtDNT18T75(0);
   miShowMode1.Click;

   TGridSort.GridSortInit(wwdbgDNT18T75);
end;

procedure TDNT18751F1.FuelleMtDNT18T75(SysPk: Integer);
begin
   wwqryDNT18751.Close;
   wwqryDNT18751.Open;

   mtDNT18T75.Close;
   mtDNT18T75.Open;
   mtDNT18T75.SortOn('', []);
   mtDNT18T75.Filter := '';
   mtDNT18T75.Filtered := False;

   mtDNT18T75.LoadFromDataSet(wwqryDNT18751, []);

   SetzeFilter;

   if SysPk > 0 then
      mtDNT18T75.Locate('SYS_PK', SysPk, []);
end;

procedure TDNT18751F1.mtDNT18T75LoadRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   inherited;
   mtDNT18T75SYS_PK.AsInteger := wwqryDNT18751.FieldByName('SYS_PK').AsInteger;
end;

procedure TDNT18751F1.SetzeFilter;
var
   FilterStr: String;
begin
   FilterStr := '';
   if miShowMode = smNotDel then
      FilterStr := 'SYS_DEL <> ' + QuotedStr('T');
   if miShowMode = smDel then
      FilterStr := 'SYS_DEL = ' + QuotedStr('T');
   mtDNT18T75.Filter := FilterStr;
   mtDNT18T75.Filtered := (FilterStr <> '');
end;

procedure TDNT18751F1.wwdbgDNT18T75CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   inherited;
   try
      if mtDNT18T75SYS_DEL.AsString = 'T' then begin
         if Highlight then begin
            AFont.Color    := clWhite; // weiﬂe Schrift
            ABrush.Color   := clRed;   // roter Hintergrund
         end
         else begin
            AFont.Color    := clRed;   // rote Schrift
            ABrush.Color   := clWhite; // weiﬂem Hintergund
         end;
      end
      else begin
         if Highlight then begin
            AFont.Color    := clWhite; // weiﬂe Schrift
            ABrush.Color   := clNavy;  // blauer Hintergrund
         end
         else begin
            AFont.Color    := clBlack; // schwarze Schrift
            ABrush.Color   := clWhite; // weiﬂer Hintergrund
         end;
      end;
   except;
   end;
end;

procedure TDNT18751F1.miShowMode1Click(Sender: TObject);
begin
   inherited;
   miShowMode := smNotDel;
   SetzeFilter;
end;

procedure TDNT18751F1.miShowMode2Click(Sender: TObject);
begin
   inherited;
   miShowMode := smDel;
   SetzeFilter;
end;

procedure TDNT18751F1.miShowMode3Click(Sender: TObject);
begin
   inherited;
   miShowMode := smBoth;
   SetzeFilter;
end;

procedure TDNT18751F1.ShowModifyInfo;
var
   S1, S2:  String;
begin
   GetRecordModificationInfo(mtDNT18T75, S1, S2);
   StatusBar.Panels[2].Text  := S1;
   StatusBar.Panels[3].Text  := S2;
end;

procedure TDNT18751F1.mtDNT18T75AfterScroll(DataSet: TDataSet);
begin
   inherited;
   ShowModifyInfo;
end;

procedure TDNT18751F1.F2Aufruf(SysPk: integer);
begin
   inherited;
   try
  	   DNT18751F2 := TDNT18751F2.Create(Application);
      with DNT18751F2 do begin
    	   hqryDNT18T75.Close;
         hqryDNT18T75.SysPK := SysPk;
         hqryDNT18T75.Open;
         if SysPk = -1 then
            hqryDNT18T75.Insert;
         ShowModal;

         // falls ein neuer Artikel angelegt wurde, bzw. ein
         // anderer aktiviert wurde
         if not hqryDNT18T75.Eof then begin
            SysPk := hqryDNT18T75.FieldByName('SYS_PK').AsInteger;
         end;
      end;
   finally
  	   DNT18751F2.Release;
   end;

   FuelleMtDNT18T75(SysPk);
   ShowModifyInfo;
end;

procedure TDNT18751F1.NewButtonBeforeAction(Sender: TObject;
  var ActionIsDone: Boolean);
begin
   inherited;
   ActionIsDone := True;

   F2Aufruf(-1);
end;

procedure TDNT18751F1.wwdbgDNT18T75KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = VK_RETURN then
      F2Aufruf(mtDNT18T75SYS_PK.AsInteger);
end;

procedure TDNT18751F1.wwdbgDNT18T75DblClick(Sender: TObject);
begin
   inherited;
   F2Aufruf(mtDNT18T75SYS_PK.AsInteger);
end;

end.
