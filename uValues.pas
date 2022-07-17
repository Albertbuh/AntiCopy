unit uValues;

interface
uses
  SysUtils,
  windows;
Const
     stop_symbols = '.,/?"''!@#$%^&*()|\:-Ц_ЧЂїЕ'+#13#10;

     eng_equals = 'ABCEHILKMNOPRTXY';
     rus_equals = 'ј¬—≈ЌЋЋ ћ»ќ–я“’”';

     stop_wordsStr = 'не нe ну что это со же а там тут как ' +
     'ее его теб€ от на и в да но нам к за '+
     'по ней с о см или из то от так об тыс т мы дл€ у кг ' +
     'совсем скоро ';

     ShingleLen = 5;
     // n = Noun
     nEnd : array [1..17] of string = ('ий ','ый ','ые', 'ых ', 'ое ', '€€ ', 'ой ', 'ого ', 'ее ', 'му ','ых ', 'ую ', 'ым ', 'им ', 'ом ', 'ем ', 'ыми ');

Var
   stop_words: array of string;

Type
            ptShingle = ^elem;
            TShingle = Record
                      words:string;
                      hash:integer;
                      end;
            TShingleComb = array of TShingle;
            elem = Record
                 Shingle: TShingle;
                 ShingComb: TShingleComb;
                 next:ptShingle;
            end;

            TColorText = (Black, Red);
            SubString = Record
                      substr:string;
                      clr: TColorText;
            end;
            TSubstr= array of SubString;

            TWords= array[1..ShingleLen] of string;

            procedure createSW(  s:string);
            function col_words(s:string):integer;

implementation

// COUNT WORDS IN FILE
function col_words(s:string):integer;
var
   i:integer;
begin
        result:=0;
        for i:=1 to length(s)-1 do
        begin
        if (s[i] <> ' ') and (s[i+1]=' ') then
        inc(result);
        end;
        inc(result);
end;
// FULLFIL GLOBAL STOP_WORDS
procedure createSW(  s:string);
var
   i:integer;
   ind: integer;
begin

    SetLength(stop_words, col_words(s));
    ind:=0;
    i:=1;
    while ind <= col_words(s)-1 do
    begin
        if s[i] <> ' ' then
        begin
            insert(s[i], stop_words[ind], length(stop_words[ind])+1);
        end
        else
        begin

            if  (length(stop_words[ind]) > 0) then
            begin
                stop_words[ind]:=' '+stop_words[ind]+' ';
                //writeln(stop_words[ind]);
                inc(ind);
            end;
        end;

        inc(i);
    end;
end;

end.
 