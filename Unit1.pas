unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects;

type
  TForm1 = class(TForm)
    Text1: TText;
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
Timer1.Enabled:=True;
Image1.Width:=form1.Width;
Image1.Height:=form1.Height;
Text1.Position.X:=Form1.Width;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
Image1.Width:=form1.Width;
Image1.Height:=form1.Height;
//Text1.Position.X:=Form1.Width;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
Text1.Position.X:= Text1.Position.X - 1;
if text1.Position.X<0 then
begin
Text1.Position.X:=Form1.Width;
end;

end;



end.
