unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    FileListBox2: TFileListBox;
    DirectoryListBox2: TDirectoryListBox;
    FilterComboBox2: TFilterComboBox;
    DriveComboBox2: TDriveComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c,d: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); //Выбираем файл
begin
  a:=FileListBox1.FileName;
  b:=a;
end;

procedure TForm1.Button2Click(Sender: TObject); //Выбираем, куда копировать
begin
  c:=DirectoryListBox1.Directory;
  d:=c+'\'+extractfilename(b);
end;

procedure TForm1.DirectoryListBox1Change(Sender: TObject); //Выбираем, куда копировать
begin
  c:=DirectoryListBox1.Directory;
end;

procedure TForm1.Button3Click(Sender: TObject); //Копируем
begin
  copyfile(pchar(b),pchar(d), true);
  showmessage('Копирование прошло успешно');
end;

procedure TForm1.Button4Click(Sender: TObject); //Создание файла
var
  e: TextFile;
begin
  assignfile (e, 'NewFile.txt');
  rewrite(e);
  showmessage('Новый файл создан')
end;

procedure TForm1.Button5Click(Sender: TObject); //Создание папки
begin
  createdir(PChar(DirectoryListBox2.Directory + '\' + edit1.Text));
  showmessage('Новая папка создана');
end;

procedure TForm1.Button6Click(Sender: TObject); //Удаление файла
begin
  deleteFile(PChar(FileListBox2.FileName));
  showmessage('Файл успешно удалён');
end;

function DeleteDir(Dir: string): boolean; //Описание процедуры удаления папки
Var
  Found: integer;
  SearchRec: TSearchRec;
begin
  result:=false;
  if IOResult<>0 then;
  ChDir(Dir);
  if IOResult<>0 then begin
  ShowMessage('Не могу войти в каталог: '+Dir); exit;
  end;
  Found:= FindFirst('*.*', faAnyFile, SearchRec);
  while Found = 0 do begin
  if (SearchRec.Name<>'.')and(SearchRec.Name<>'..') then
  if (SearchRec.Attr and faDirectory)<>0 then begin
  if not DeleteDir(SearchRec.Name) then exit;
  end else
  if not DeleteFile(SearchRec.Name) then begin
  ShowMessage('Не могу удалить файл: '+SearchRec.Name); exit;
  end;
  Found:= FindNext(SearchRec);
  end;
  FindClose(SearchRec);
  ChDir('..'); RmDir(Dir);
  result:=IOResult=0;
end;

procedure TForm1.Button7Click(Sender: TObject);  //Удаление папки
begin
  deleteDir(PChar(DirectoryListBox2.Directory + '\' ));
  showmessage('Папка успешно удалена');
end;

end.

