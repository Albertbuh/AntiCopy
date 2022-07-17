unit uCanonization;

interface
uses
  SysUtils,
  windows, uValues;

       procedure del_stop_words(var s:string);
       procedure del_adj(var s:String);
       procedure check_eng(var s:string);
       procedure del_space(var s:string);
       procedure del_stop_symbols(var s:string);
       function canonize( var s:string):string;

implementation

procedure check_eng(var s:string);
var i:integer;
begin
    for i:=1 to length(eng_equals) do
    begin
        while pos(eng_equals[i], AnsiUpperCase(s)) <> 0 do
        begin

            s[pos(eng_equals[i], AnsiUpperCase(s))] := rus_equals[i];
        end;
    end;

end;

procedure del_adj(var s:String);
const
     nSymb = '@';
var
   i, spInd:integer; //sp-Space
begin

    for i:=1 to length(nEnd) do
    begin
    while pos(nEnd[i], s) <> 0 do
    begin
        insert(nSymb, s, pos(nEnd[i], s));
        delete(s, pos(nEnd[i], s), 2);
    end;
    end;

    spInd:=1;
    i:=0;
    while pos(nSymb, s) <> 0 do
    begin
        if s[i]= ' ' then
        begin
            spInd:=i;
        end;
        if s[i]= nSymb then
        begin
           i:=i - (pos(nSymb,s)-spInd+1);
           delete(s, spInd,(pos(nSymb,s)-spInd+1));
        end;
        inc(i);
    end;
end;

procedure del_stop_symbols(var s:string);
var
   i:integer;
begin
    // DEL STOP_SYMBOLS
    for i:=1 to length(stop_symbols) do
    begin
        while pos( stop_symbols[i], s ) <> 0 do
        begin
             insert(' ', s, pos(stop_symbols[i], s));
            delete( s, pos(stop_symbols[i], s),1);

        end;
    end;
end;


procedure del_stop_words(var s:string);
var
   i:integer;
begin
   //DEL STOP_WORDS
    for i:=0 to length(stop_words)-1 do
    begin

        while pos( stop_words[i], s ) <> 0 do
        begin
            delete( s, pos(stop_words[i],s), length(stop_words[i])-1 );
        end;
    end;

end;

//clear spaces
procedure del_space(var s:string);
begin
    while pos( '  ', s) <> 0 do
    begin
        delete( s, pos('  ', s), 1);
    end;
end;

//CANONIZATION OF FILE
function canonize( var s:string):string;
var
   i:integer;
begin
    s:=' '+trim(s)+' ';
    s:= AnsiLowerCase(s);
    check_eng(s);
    s:= AnsiLowerCase(s);
    del_stop_symbols(s);
    del_stop_words(s);
    del_adj(S);


    del_space(s);
    s:=AnsiLowerCase(s);
    s:=' '+trim(s);
    result:=s;
end;
end.
