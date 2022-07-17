unit uShingleList_Creation;

interface

uses
    SysUtils,uValues, uCanonization,uCreate_combinations;

    
function ElfHash(const Value: string): Integer; 
procedure create_shinglelist(shing: ptShingle; s:string);
procedure sortlist( x:ptShingle);
function make_shingles(str:string): ptShingle; 
function count_shingles(x:ptShingle):integer;
procedure shFree(var y:ptShingle);
//function StrInList(const s:string; shing:ptShingle):boolean;





implementation


function ElfHash(const Value: string): Integer;
var
  i, x: Integer;
begin
  Result := 0;
  for i := 1 to Length(Value) do
  begin
    Result := (Result shl 4) + Ord(Value[i]);
    x := Result and $F0000000;
    if (x <> 0) then
      Result := Result xor (x shr 24);
    Result := Result and (not x);
  end;
end;
/////////////////////////////////////////////////////////////////////////////////
procedure Delete(x:ptShingle);
var temp:ptShingle;
begin
    temp:=x^.next;
    x^.next:=x^.next^.next;
    dispose(temp);

end;

procedure shFree(var y:ptShingle);
begin
     while y^.next<>nil do
     begin
         Delete(y);
     end;
     Dispose(y);
end;


//////////////////////////////////////////////////////////////
procedure create_shinglelist(shing: ptShingle; s:string);
var
   i,ind, k, j:integer;
   substr:string;
   num_of_shingles:integer;
   words:TWords; 
begin
    s:=trim(s);
    j:=1;
    i:=1;
    num_of_shingles:=0;


    while (s<>'') and (num_of_shingles < abs(col_words(s) - ShingleLen+1)) do
    begin
        substr:='';
        k:=1;

        while (k<=ShingleLen) and (i<=length(s)) do
        begin
            if s[i]=' ' then
            begin
                 inc(k);
                 if k=2 then
                 begin
                     j:=i+1;
                 end;
            end;

            substr:=substr+s[i];
            inc(i);
        end;

        if substr<>'' then
        begin
             New(shing^.next);
             shing:=shing^.next;
             shing^.shingle.words:=substr;
             shing^.shingle.hash:=ElfHash(trim(substr));

             SetLength(shing^.ShingComb, factorial(ShingleLen));
             DivToWords(shing^.shingle.words, words);
             sort(words);


             shuffle(words, shing^.ShingComb, low(shing^.ShingComb), high(words), true);

             inc(num_of_shingles);
        end;

        i:=j;
    end;

    shing^.next:=nil;
end;



procedure sortlist( x:ptShingle);
procedure swap( var a,b:TShingle);
var
   temp : TShingle;
begin
    temp:=a;
    a:=b;
    b:=temp;
end;
var
   i,j:integer;
   min,head:ptShingle;
begin

   x:=x^.next;
   while x^.next<>nil do
   begin
       min:=x;
       head:=x;
       x:=x^.next;
       while x<>nil do
       begin

           if x^.shingle.hash<min^.shingle.hash then
              min:=x;
           x:=x^.next;
       end;
       swap(head^.shingle,min^.shingle);
       x:=head^.next;
   end;

end;


function make_shingles(str:string): ptShingle;
var
   shingles: ptShingle;
   sfull:string;
   ind:integer;
begin

      sfull:=canonize(str);
      New(shingles);
     //FULFILL SHINGLES
     //setlength(shingles, abs(col_words(sfull)-ShingleLen+1)  );
     create_shinglelist(shingles, sfull);
     //sortlist(shingles);

     result:=shingles;
end;






function count_shingles(x:ptShingle):integer;
begin
   result:=0;

   x:=x^.next;
   while x<>nil do
   begin
       x:=x^.next;
       inc(result);

   end;
end;
end.

