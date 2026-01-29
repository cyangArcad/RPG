// --- Padding start ---
dcl-s tempX int(10) inz(42);
dcl-s dummyChar char(5) inz('abc');
dcl-s fillerArray char(10) dim(3) inz(*loval);
dcl-s nothing int(10);

for nothing = 1 to 3;
   fillerArray(nothing) = %char(nothing) + dummyChar;
endfor;

tempX = tempX * 2;
dummyChar = %subst(dummyChar : 2 : 2) + 'z';
// --- Padding end ---

dcl-s i int(10) inz(0);
dcl-s a int(10);
dcl-s b int(10);

dow i < 10;
   // a comment
   if %rem(i : 2) = 0;
      a = b + i;
   else;
      a = b - i;
   endif;

   i += 1;
enddo;


// --- Padding start ---
dcl-s counter int(10) inz(7);
dcl-s junkField char(20) inz('junkdata');

dow counter > 0;
   select;
      when counter = 3;
         junkField = %trim(junkField) + '!';
      when counter = 5;
         junkField = %xlate('a':'b':junkField);
      other;
         junkField = %replace('x':junkField:1:1);
   endsl;
   counter -= 1;
enddo;

tempX += counter * 3;
fillerArray(2) = %char(%len(junkField));
// --- Padding end ---
