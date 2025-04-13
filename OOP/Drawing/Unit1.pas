unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;






tfigure = class
  x : integer;
  y : integer;
 procedure scaleup;
 procedure scaledown; virtual;
 end;

tsquare = class (tfigure)
  procedure draw(line : integer);
end;

tcircle = class (tfigure)
  procedure draw(line : integer);
end;

tellipse = class (tfigure)
  procedure draw(line : integer);
  procedure scaledown; override;
end;



var
  Form1: TForm1;


Myfigure : char;
Mysquare : tsquare;
Mycircle : tcircle;
Myellipse : tellipse;




implementation

{$R *.dfm}




Procedure tfigure.scaleup;
begin
   if x>0 then
    Begin
      x:=x-5;
      y:=y+5;
    End;
end;

Procedure tfigure.scaledown;
begin
   if x<y then
    Begin
      x:=x+5;
      y:=y-5;
    End;
end;

Procedure tellipse.scaledown;
begin
    if x<y-100 then
    Begin
      x:=x+5;
      y:=y-5;
    End;
end;




Procedure tsquare.draw(line : integer);
begin
form1.Repaint;
case line of
0 : Form1.Canvas.Pen.Style:=Pssolid;
1 : Form1.Canvas.Pen.Style:=psdot;
2 : Form1.Canvas.Pen.Style:=psClear;
end;
Form1.canvas.Brush.Style:=BsSolid;
Form1.Canvas.Brush.Color:=clRed;
Form1.Canvas.Rectangle(x,x,y,y);
end;

Procedure tcircle.draw;
begin
form1.Repaint;
case line of
0 : Form1.Canvas.Pen.Style:=Pssolid;
1 : Form1.Canvas.Pen.Style:=psdot;
2 : Form1.Canvas.Pen.Style:=psClear;
end;
Form1.canvas.Brush.Style:=BsSolid;
Form1.Canvas.Brush.Color:=clRed;
Form1.Canvas.Ellipse(x,x,y,y)
end;

Procedure tellipse.draw;
begin
form1.Repaint;
case line of
0 : Form1.Canvas.Pen.Style:=Pssolid;
1 : Form1.Canvas.Pen.Style:=psdot;
2 : Form1.Canvas.Pen.Style:=psClear;
end;
Form1.canvas.Brush.Style:=BsSolid;
Form1.Canvas.Brush.Color:=clRed;
Form1.Canvas.Ellipse(x+50,x,y-50,y)
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
Mysquare:=tsquare.Create;
Mysquare.x:=150;
Mysquare.y:=350;
Mysquare.draw(Combobox1.ItemIndex);
Myfigure:='1';


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
case myfigure  of
'1' : Begin
        Mysquare.scaleup;
        Mysquare.draw(ComboBox1.ItemIndex);
      End;
'2' : Begin
        Mycircle.scaleup;
        Mycircle.draw(ComboBox1.ItemIndex);
      End;
'3' : Begin
        Myellipse.scaleup;
        Myellipse.draw(ComboBox1.ItemIndex);
      End;
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Mycircle:=tcircle.Create;
Mycircle.x:=150;
Mycircle.y:=350;
Mycircle.draw(ComboBox1.ItemIndex);
Myfigure:='2';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 case myfigure  of
'1' : Begin
        Mysquare.scaledown;
        Mysquare.draw(ComboBox1.ItemIndex);
      End;
'2' : Begin
        Mycircle.scaledown;
        Mycircle.draw(ComboBox1.ItemIndex);
      End;
'3' : Begin
        Myellipse.scaledown;
        Myellipse.draw(ComboBox1.ItemIndex);
      End;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Myellipse:=tellipse.Create;
Myellipse.x:=150;
Myellipse.y:=350;
Myellipse.draw(ComboBox1.ItemIndex);
Myfigure:='3';
end;
end.
