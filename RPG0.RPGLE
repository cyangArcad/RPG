// --- Padding start ---
dcl-s name char(20) inz('John');
dcl-s today date inz(d'2025-08-08');
dcl-s junk char(50);

junk = %char(today) + '|' + name;
if %scan('o':junk) > 0;
   junk = %replace('X':junk:2:1);
endif;
// --- Padding end ---
dcl-s i int(10);
dcl-s a int(10);
dcl-s b int(10);

for i = 0 to 9;
   if %rem(i : 2) = 0;
      a = b + i; // cmt 1
   else;
      a = b - i; // cmt 2
   endif;
endfor;
// --- Padding start ---
dcl-s mask char(10);
mask = %editc(a : 'X');

if %len(%trim(mask)) > 5;
   name = %xlate('J':'Z':name);
endif;
// --- Padding end ---
