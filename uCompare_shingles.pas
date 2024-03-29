unit uCompare_shingles;

interface
uses
    SysUtils,uValues, uCanonization, uShingleList_Creation;

function search( a:ptShingle;  x:integer):integer;
function compare( a,b:ptShingle):real;
procedure StrToSentence(s:string; var subarr:TSubStr);
procedure sentcmp(var subarr:TSubStr; a:ptShingle);

implementation

function search( a:ptShingle;  x:integer):integer;
var i:integer;
begin
      result:=0;
      a:=a^.next;
      while a<>nil do
      begin
          for i:=low(a^.ShingComb) to high(a^.ShingComb) do
          begin
              if a^.ShingComb[i].hash = x then
               result:=3;
          end;
          if a^.Shingle.hash = x then
             result:=1;
          a:=a^.next;

      end;
end;

function compare( a,b:ptShingle):real;
var
   same: integer;
   count_shinglesA,count_shinglesB:integer;
begin
     same:=0;
     count_shinglesA:=count_shingles(a);
     count_shinglesB:=count_shingles(b);

     a:=a^.next;
     while a<> nil do
     begin
         same:=same+search(b, a^.shingle.hash);
         a:=a^.next;
     end;
    //  result:=same;
    //ShowMessage(IntToStr(same)+' '+ IntToStr(count_shinglesA)+' '+ IntToStr(count_shinglesB));
    if same <= 0+0.00001 then result:=0
    else
    begin
    if (same>=count_shinglesA) or (same>=count_shinglesB) then
       result:=100
    else
        result:= ((same*2/(count_shinglesA+count_shinglesB))
                 + (same/count_shinglesA) + (same/count_shinglesB))*100/3;

    if result > 100+0.0001 then result:=100;
    end;

    //result:=same;
end;

procedure StrToSentence(s:string; var subarr:TSubStr);
var
   substr:string;
   i:integer;
begin
    i:=1;
    s:=trim(s);

    while i<= length(s) do
    begin
    substr:='';

         while (i<=length(s)) and ( ((s[i] <> '.') and (s[i] <> ':') and (s[i]<>'�')) or (length(trim(substr)) < 10)) do
         begin
              if (s[i]<> #13) and (s[i]<>#10) then
                 substr:=substr+s[i];
         inc(i);
         end;

    SetLength(subArr, length(subArr)+1);
    subArr[length(subArr)-1].substr:=trim(substr)+'. ';
    subArr[length(subArr)-1].clr:=Black;

    inc(i);
    end;
end;


procedure sentcmp(var subarr:TSubStr; a:ptShingle);
var
   word, subword: string;
   i,j,ind, same:integer;
   s:TWords;
   select:boolean;
begin
     ind:=1;

     a:=a^.next;

    while a<>nil do
    begin

    for i:=1 to ShingleLen do begin s[i]:=''; end;
    i:=1;
    // create words from shingles
    for ind:=1 to ShingleLen do
    begin
    while (a^.Shingle.words[i] <> ' ') and (i<=length(a^.Shingle.words)) do
    begin
       s[ind]:=s[ind]+a^.Shingle.words[i];
       inc(i);
    end;
    inc(i);
    end;

    // cmp through pos function
    for j:=low(subarr) to high(subarr) do
    begin
        select:=true;

        for i:=1 to ShingleLen do
        begin
            if (pos(s[i], AnsiLowerCase(subarr[j].substr)) = 0)  and (s[i]<>'') then
               select:=false;
        end;
        if select then
           subarr[j].clr:=Red;
    end;

    a:=a^.next;
    end;
end;

end.
