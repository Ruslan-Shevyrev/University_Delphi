program proga;

uses
  Windows,
  Messages;

var
  WndClass: TWndClass;
  szAppName: PChar;
  WinHandle: HWnd;
  mbutton : Hwnd;
  Msg: TMsg;
  x,y : integer;
Function MyWndProc(hWnd: HWND; Msg: UINT; wParam: WPARAM;
  lParam: LPARAM): LRESULT; stdcall;
var
  R: TRect;
  ps: TPaintStruct;
  Context: HDC;
  Font: HFont;
  Brush: HBRUSH;
  Pen: HPEN;
begin

  case Msg of
    WM_PAINT:
    begin
    Context := BeginPaint (hWnd, ps);
    GetClientRect (hWnd, R);
 {   Font := CreateFont (0, 0, 0, 0, FW_NORMAL, 0, 0, 0, DEFAULT_CHARSET,
    OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
    DEFAULT_QUALITY,DEFAULT_PITCH,'Tahoma');
    SelectObject (Context, Font);
    DrawText(Context, 'Hello, Windows. It''s great :)!', -1, R,
    DT_SINGLELINE or DT_CENTER or DT_VCENTER);
    DeleteObject(Font);}
    Brush := CreateHatchBrush(7, RGB(77,77,255));
    Pen := CreatePen(0,1,RGB(77,77,255));
    SelectObject (Context, Brush);
    SelectObject (Context, Pen);
    ellipse(Context,x,x,y,y);
    EndPaint (hWnd, ps); Result := 0;
    end;

          WM_COMMAND:
    begin
    case LoWord( wParam ) of
    1: begin
      if y < 600 then
      begin
      X := X - 10;
      Y := Y + 10;
      InvalidateRect(hWnd, nil, false);
      end;
       end;
  //    1: MessageBox(winhandle,'Вы нажали на кнопку','Загаловок',0);
    end;
    end;

    WM_DESTROY:
    begin
      PostQuitMessage (0);
      Result := 0;
    end;
    else
      Result := DefWindowProc (hWnd, Msg, wParam, lParam);
  end;




end;
begin
 x:=200;
 y:=400;
  szAppname := 'Hello win';
  WndClass.Style := CS_HREDRAW or CS_VREDRAW;
  WndClass.lpfnWndProc := @MyWndProc;
  WndClass.cbClsExtra := 0;
  WndClass.cbWndExtra := 0;
  WndClass.hInstance := HInstance;
  WndClass.hIcon := LoadIcon(HInstance, IDI_APPLICATION);
  WndClass.hCursor := LoadCursor(HInstance, IDC_ARROW);
  WndClass.hbrBackground := GetStockObject(WHITE_BRUSH);
  WndClass.lpszMenuName := nil;
  WndClass.lpszClassName := szAppName;

  RegisterClass (WndClass);

  WinHandle := CreateWindow(WndClass.lpszClassName,
    'the hello program',
    WS_OVERLAPPEDWINDOW,
//    CW_USEDEFAULT,
//    CW_USEDEFAULT,
//    CW_USEDEFAULT,
//   CW_USEDEFAULT,
100,
100,
800,
640,

    0,
    0,
    HInstance,
    nil);
    mbutton:=CreateWindow('button','+',WS_VISIBLE or WS_CHILD or bs_pushbutton,
        100, 10, 20, 20, winhandle, 1, hInstance, nil);
    UpdateWindow (WinHandle);
    ShowWindow(WinHandle, SW_SHOW);
    while GetMessage (Msg, 0, 0, 0) do
    begin
      TranslateMessage(Msg);
      DispatchMessage (Msg);
    end;
    end.

