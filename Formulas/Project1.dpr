program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  windows;

type
  rec = record
  rectype : string;
  values : variant;
end;


var
  arr : array of rec;
  s, s1 : string;
  i,k : integer;
  flag : boolean;
  open_brack : Integer;
  close_brack : integer;


begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  k:=0;
  setlength(arr,100);
  writeln('Введите выражение');
  readln(s);
//  if //(((s[1]='1') or (s[1]='2') or (s[1]='3')or (s[1]='4')or (s[1]='5')or (s[1]='6')or (s[1]='7')or (s[1]='8')or (s[1]='9') or (s[1]='0'))
  //and
//  ((s[length(s)]='1')or (s[length(s)]='2')or (s[length(s)]='3')or (s[length(s)]='4')or (s[length(s)]='5')or (s[length(s)]='6')or (s[length(s)]='7')or (s[length(s)]='8')or (s[length(s)]='9')or (s[length(s)]='0'))
//  then
//  begin
  for i :=1 to length(s) do
//   if flag=true then
 //  break
//   else
     case s[i] of
     '+','-','*','/' : begin
                          if (i>=length(s)) or (s[i+1] = '+') or (s[i+1]='-') or (s[i+1]='*') or (s[i+1]='/') then
                          begin
                            flag:=true;
                            break;
                         end
                          else
                          begin
                          k:=k+1;
                          arr[k].rectype:='Math';
                          arr[k].values:=char(s[i]);
                          k:=k+1;
                          end;
                        end;
     '('              : begin
     if (i>1) and (s[i-1]<>'+') and (s[i-1]<>'-') and (s[i-1]<>'*')and (s[i-1]<>'/') then
     begin
     flag:=true;
     break;
     end
     else
                         begin
     
                          open_brack:=open_brack+1;
                          k:=k+1;
                          arr[k].rectype:='brack';
                          arr[k].values:=char(s[i]);
                          k:=k+1;
                         end;
                        end;

     ')'               : begin
     if (open_brack<=close_brack) or(s[i-1]='+')or (s[i-1]='-') or (s[i-1]='*')or (s[i-1]='/') then
      begin
        flag:=true;
        break;
      end
      else
                          begin
                          close_brack:=close_brack+1;
                          k:=k+1;
                          arr[k].rectype:='brack';
                          arr[k].values:=char(s[i]);
                          k:=k+1;
                           end;
      end;
'1','2','3','4','5','6','7','8','9','0',',' : begin
                                              if ((i<length(s)) and (s[i+1]<> '(') and (s[i+1]<> ')') and (s[i+1]<> '+') and (s[i+1]<> '-') and (s[i+1]<> '*') and (s[i+1]<> '/')) then
                                                  arr[k].values:=arr[k].values+s[i]
                                              else
                                               begin

                                               arr[k].values:=arr[k].values+s[i];
                                               arr[k].rectype:='Val';
                                               arr[k].values:=double(arr[k].values);
                                               end;
                                           end
                                           else
                                           begin
                                           flag:=true;
                                           break;
                                           end;

     end;
 // end
 // else
//  flag:=true;
  if close_brack<>open_brack then
  flag:=true;
  if flag=true then
  begin
  writeln('Неверное выражение');
  readln;
  end
  else
          for i := 0 to k do
          write(arr[i].values,' ');

 //         writeln(arr[0].values+arr[2].values);
          readln;
end.


