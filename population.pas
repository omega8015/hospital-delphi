unit population;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.StdCtrls, Vcl.Grids, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfmPopGen = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    gbPersInfo: TGroupBox;
    edSurname: TLabeledEdit;
    edName: TLabeledEdit;
    edPatr: TLabeledEdit;
    edBirthYear: TLabeledEdit;
    edProf: TLabeledEdit;
    edPassword: TLabeledEdit;
    edCity: TLabeledEdit;
    edStreet: TLabeledEdit;
    edBuilding: TLabeledEdit;
    gbPopList: TGroupBox;
    gbGen: TGroupBox;
    gbPersona: TGroupBox;
    btnGenerate: TButton;
    dlgOpenText: TOpenTextFileDialog;
    cbSurname: TComboBox;
    cbName: TComboBox;
    cbPatr: TComboBox;
    rgSex: TRadioGroup;
    cbProf: TComboBox;
    cbCity: TComboBox;
    cbStreet: TComboBox;
    edBuildingNum: TEdit;
    edYear: TEdit;
    Label1: TLabel;
    edPass: TEdit;
    Label2: TLabel;
    gbGenPeople: TGroupBox;
    edAmount: TLabeledEdit;
    tbSexPercentage: TTrackBar;
    Label3: TLabel;
    btnAdd: TButton;
    memo: TMemo;
    stringGrid: TStringGrid;
    btnSave: TButton;
    rgView: TRadioGroup;
    dlgSave: TSaveDialog;
    btnLoad: TButton;
    dlgOpen: TOpenDialog;
    alSort: TActionList;
    acSortBySurname: TAction;
    pmListShow: TPopupMenu;
    N1: TMenuItem;
    Button1: TButton;
    acClearList: TAction;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure rgSexClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure stringGridClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure rgViewClick(Sender: TObject);
    procedure acSortBySurnameExecute(Sender: TObject);
    procedure acClearListExecute(Sender: TObject);
  private
    { Private declarations }
  type
    yearsRange = 1913..2020;
    bldNumRange = 1..100;
    passRange = 1..99999;

  const
    FWomenNames = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\����� ���.txt';
    FWomenPatr = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\�������� ���.txt';
    FWomenSurname = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\������� ���.txt';
    FMenNames = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\����� ���.txt';
    FMenPatr = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\�������� ���.txt';
    FMenSurname = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\������� ���.txt';
    FProf = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\���������.txt';
    FCities = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\cities.txt';
    FStreets = 'C:\Users\Philimonov\OneDrive\���������\Embarcadero\Studio\Projects\Hospital\hData\streets.txt';
  var
//    list : TList;
//  item : pointer;
    sexCheck : integer;
  function rndm(x, y : integer) : integer;
  public
    { Public declarations }
  Type TPerson = record
    surname : string[20];
    name : string[20];
    patronymic : string[20];
    birthYear : integer;
    sex : integer;
    city : string[20];
    street : string[20];
    building : integer;
    profession : string[20];
    passport : string[20];
  end;
  var
    person : TPerson;
    pp : ^TPerson;
    FPerson : file of TPerson;
  procedure  genPerson;
  procedure showList(dst : integer);  //  dst = 0 => ����� � memo, dst = 1 => ����� � grid
  procedure listToMemo();
  procedure listToGrid();
//function sortBySurname(pp1, pp2 : pointer) : integer;
  end;




var
  fmPopGen: TfmPopGen;


function sortBySurname(pp1, pp2 : pointer) : integer;

implementation

{$R *.dfm}

uses system.Math, main;




function TfmPopGen.rndm(x, y : integer) : integer;

begin
  //Randomize;
  rndm := RandomRange(x, y);
end;

procedure TfmPopGen.genPerson;
var
  i: integer;
begin
  with person do
  begin
    birthYear := rndm(low(yearsRange), high(yearsRange));
    passport := '';
    passport[0] := '6';
    for i := 1 to 6 do
    begin
      passport[i] := AnsiChar(rndm(48, 58));
    end;
    building := rndm(low(bldNumRange), high(bldNumRange));
    surname := cbSurname.Items[rndm(0, cbSurname.Items.Count)];
    name := cbName.Items[rndm(0, cbName.Items.Count)];
    patronymic := cbPatr.Items[rndm(0, cbPatr.Items.Count)];
    profession := cbProf.Items[rndm(0, cbProf.Items.Count)];
    city := cbCity.Items[rndm(0, cbCity.Items.Count)];
    street := cbStreet.Items[rndm(0, cbStreet.Items.Count)];
    sex := rgSex.ItemIndex;
  end;
end;

procedure TfmPopGen.listToMemo();
var
  i : integer;
  strSettings : string;
  st2 : string;

begin
  strSettings := '%-16s %-10s %-16s %-6d %-20s %-15s %-16s %-4d %-3d %-8s';
  memo.Lines.Clear;
  memo.Visible := true;
  stringGrid.Visible := false;
  for i := 0 to (personList.Count - 1) do
    begin
      pp := personList.Items[i];
      memo.Lines.Add(Format(strSettings,
      [pp^.surname, pp^.name, pp^.patronymic, pp^.birthYear, pp^.profession, pp^.city, pp^.street, pp^.building,
      pp^.sex, pp^.passport]));
    end;
end;

procedure TfmPopGen.rgViewClick(Sender: TObject);
begin
showList(rgView.ItemIndex);
end;

procedure TfmPopGen.listToGrid();
var
  i: integer;

begin
stringGrid.RowCount := personList.Count + 1;
stringGrid.Visible := true;
memo.Visible := false;
stringGrid.Cells[0, 0] := '�������';
stringGrid.Cells[1, 0] := '���';
stringGrid.Cells[2, 0] := '��������';
stringGrid.Cells[3, 0] := '��� ����.';
stringGrid.Cells[4, 0] := '���������';
stringGrid.Cells[5, 0] := '�����';
stringGrid.Cells[6, 0] := '�����';
stringGrid.Cells[7, 0] := '���';
stringGrid.Cells[8, 0] := '���';
stringGrid.Cells[9, 0] := '�������';

for i := 0 to personList.Count - 1 do
  begin
  pp := personList.Items[i];
  stringGrid.Cells[0, i+1] := pp^.surname;
  stringGrid.Cells[1, i+1] := pp^.name;
  stringGrid.Cells[2, i+1] := pp^.patronymic;
  stringGrid.Cells[3, i+1] := IntToStr(pp^.birthYear);
  stringGrid.Cells[4, i+1] := pp^.profession;
  stringGrid.Cells[5, i+1] := pp^.city;
  stringGrid.Cells[6, i+1] := pp^.street;
  stringGrid.Cells[7, i+1] := IntToStr(pp^.building);
  if pp^.sex <> 0 then
  stringGrid.Cells[8, i+1] := '���'
  else stringGrid.Cells[8, i+1] := '���';
  stringGrid.Cells[9, i+1] := pp^.passport;
  //stringGrid.Rows[i] := strArr;
  end;
end;

procedure TfmPopGen.showList(dst : integer);
var
  i : integer;

begin
  case dst of
  0: listToMemo;
  1: listToGrid;
  end;
end;

procedure TfmPopGen.stringGridClick(Sender: TObject);
begin
  edSurname.Text := stringGrid.Cells[0, stringGrid.Row];
  edName.Text := stringGrid.Cells[1, stringGrid.Row];
  edPatr.Text := stringGrid.Cells[2, stringGrid.Row];
  edBirthYear.Text := stringGrid.Cells[3, stringGrid.Row];
  edProf.Text := stringGrid.Cells[4, stringGrid.Row];
  edCity.Text := stringGrid.Cells[5, stringGrid.Row];
  edStreet.Text := stringGrid.Cells[6, stringGrid.Row];
  edBuilding.Text := stringGrid.Cells[7, stringGrid.Row];
  edPassword.Text := stringGrid.Cells[9, stringGrid.Row];
end;

function sortBySurname(pp1, pp2 : pointer) : integer;
var
  prs1, prs2 : TfmPopGen.TPerson;
  v: variant;
begin
  prs1:=TfmPopGen.TPerson(pp1^);
  prs2 := TfmPopGen.TPerson(pp2^);
  if prs1.surname < prs2.surname then result := -1
  else if prs1.surname > prs2.surname then result :=1
  else result :=0


end;

procedure TfmPopGen.acClearListExecute(Sender: TObject);
var
i : integer;
begin
  for i := 0 to personList.Count - 1 do
  begin
    pp := personList.Items[i];
    dispose(pp);
  end;

  personList.Clear;
  rgViewClick(self);
end;

procedure TfmPopGen.acSortBySurnameExecute(Sender: TObject);
begin
   personList.First;
   personList.Sort(@sortBySurname);
   rgViewClick(self);
end;

procedure TfmPopGen.btnAddClick(Sender: TObject);
begin

if cbSurname.ItemIndex <> -1 then person.surname := cbSurname.Text
else cbSurname.SetFocus;
if cbName.ItemIndex <> -1 then person.Name := cbName.Text
else cbName.SetFocus;
if cbPatr.ItemIndex <> -1 then person.patronymic := cbPatr.Text
else cbPatr.SetFocus;
if cbProf.ItemIndex <> -1 then person.profession := cbProf.Text
else cbProf.SetFocus;
if cbCity.ItemIndex <> -1 then person.city := cbCity.Text
else cbCity.SetFocus;
if cbStreet.ItemIndex <> -1 then person.street := cbStreet.Text
else cbStreet.SetFocus;

if edYear.Text <> '' then  // � ���� ����� ���-�� ����
   begin
     if (StrToInt(edYear.Text) < Low(yearsRange)) or (StrToInt(edYear.Text) > High(yearsRange)) then
      begin    // �������� � ���� ����� �� �������� � ���������� ��������
      edYear.Text := IntToStr(Low(yearsRange));
      edYear.SetFocus;
      end
     else person.birthYear := StrToInt(edYear.Text);  // � ���� ����� ���������� ���������� - ��������� �� � ����������
   end
   else
   begin
   edYear.Text := IntToStr(Low(yearsRange));
   end;

if Length(edPass.Text) <> 6 then
 begin
 edPass.Text := '';
 edPass.SetFocus;
 end
else person.passport := edPass.Text;

if edBuildingNum.Text <> '' then    // � ���� ����� ������ �� ������
  begin
   if (StrToInt(edBuildingNum.Text) < Low(bldNumRange)) or ((StrToInt(edBuildingNum.Text) > High(bldNumRange)))
    then   // �������� � ���� ����� �� �������� � ���������� ��������
      begin
        edBuildingNum.Text := '1';
        edBuildingNum.SetFocus;
      end
      else
      person.building := StrToInt(edBuildingNum.Text);   // �������� ������ - ������� � ���� � ����������
  end
  else    // ��������� ���� �����, ���� � ��� ������ ������
  begin
   edBuildingNum.Text := '1';
   edBuildingNum.SetFocus;
  end;
New(pp);
pp^ := person;
personList.Add(pp);

end;

procedure TfmPopGen.btnGenerateClick(Sender: TObject);
var
  i, pos : integer;
begin
if edAmount.Text = '' then exit;

pos := (tbSexPercentage.Position * StrToInt(edAmount.Text)) div 100;
rgSex.ItemIndex := 0;
fmPopGen.rgSexClick(self);
for i := 1 to pos do
  begin
  genPerson;
  New(pp);
  pp^ := person;
  personList.Add(pp);
  end;
rgSex.ItemIndex := 1;
fmPopGen.rgSexClick(self);
for i := pos + 1 to StrToInt(edAmount.Text) do
  begin
  genPerson;
  New(pp);
  pp^ := person;
  personList.Add(pp);
  end;
showList(rgView.ItemIndex);
end;

procedure TfmPopGen.btnLoadClick(Sender: TObject);
var
F: file of TPerson;

begin
if dlgOpen.Execute then
  begin
  AssignFile(F, dlgOpen.FileName);
  reset(F);
  personList.Clear;
  while not eof(F) do
   begin
     read(F, person);
     new(pp);
     pp^ := person;
     personList.Add(pp);
   end;
   showList(rgView.ItemIndex);

  end;

end;

procedure TfmPopGen.btnSaveClick(Sender: TObject);
var
  F : file of TPerson;
  i: Integer;

begin
if dlgSave.Execute then
  begin
  AssignFile(F, dlgSave.FileName);
  Rewrite(F);
    for i := 0 to personList.Count - 1 do
    begin
    pp := personList.Items[i];
    person := pp^;
    Write(F, person);
    end;
  end;
CloseFile(F);
end;

procedure TfmPopGen.FormCreate(Sender: TObject);
var
  F : TextFile;

begin
if rgSex.ItemIndex <> 0 then
  begin
    AssignFile(F, FWomenSurname);
    Reset(F);
    cbSurname.Items.LoadFromFile(FWomenSurname, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FWomenNames);
    Reset(F);
    cbName.Items.LoadFromFile(FWomenNames, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FWomenPatr);
    Reset(F);
    cbPatr.Items.LoadFromFile(FWomenPatr, TEncoding.UTF8);
    CloseFile(F);
  end
else
  begin
    AssignFile(F, FMenSurname);
    Reset(F);
    cbSurname.Items.LoadFromFile(FMenSurname, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FMenNames);
    Reset(F);
    cbName.Items.LoadFromFile(FMenNames, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FMenPatr);
    Reset(F);
    cbPatr.Items.LoadFromFile(FMenPatr, TEncoding.UTF8);
    CloseFile(F);
  end;
  sexCheck := rgSex.ItemIndex;
  AssignFile(F, FMenSurname);
  Reset(F);
  cbProf.Items.LoadFromFile(FProf, TEncoding.UTF8);
  CloseFile(F);
  AssignFile(F, FCities);
  Reset(F);
  cbCity.Items.LoadFromFile(FCities, TEncoding.UTF8);
  CloseFile(F);
  AssignFile(F, FStreets);
  Reset(F);
  cbStreet.Items.LoadFromFile(FStreets, TEncoding.UTF8);
  CloseFile(F);
end;

procedure TfmPopGen.rgSexClick(Sender: TObject);
var
  F : TextFile;

begin
if rgSex.ItemIndex = sexCheck then
exit;
if rgSex.ItemIndex <> 0 then
  begin
    AssignFile(F, FWomenSurname);
    Reset(F);
    cbSurname.Items.LoadFromFile(FWomenSurname, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FWomenNames);
    Reset(F);
    cbName.Items.LoadFromFile(FWomenNames, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FWomenPatr);
    Reset(F);
    cbPatr.Items.LoadFromFile(FWomenPatr, TEncoding.UTF8);
    CloseFile(F);
  end
else
  begin
    AssignFile(F, FMenSurname);
    Reset(F);
    cbSurname.Items.LoadFromFile(FMenSurname, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FMenNames);
    Reset(F);
    cbName.Items.LoadFromFile(FMenNames, TEncoding.UTF8);
    CloseFile(F);
    AssignFile(F, FMenPatr);
    Reset(F);
    cbPatr.Items.LoadFromFile(FMenPatr, TEncoding.UTF8);
    CloseFile(F);
  end;
  sexCheck := rgSex.ItemIndex;
cbSurname.Text := '�������';
cbName.Text := '���';
cbPatr.Text := '��������';
end;

end.
