// --- Padding start ---
dcl-s flags int(10) dim(5) inz(1:2:3:4:5);
dcl-s idx int(10);

for idx = 1 to %elem(flags);
   select;
      when flags(idx) = 3;
         flags(idx) = 99;
      when flags(idx) > 4;
         flags(idx) = flags(idx) - 1;
      other;
         flags(idx) += 2;
   endsl;
endfor;
// --- Padding end ---
dcl-s j int(10);
dcl-s a int(10);
dcl-s b int(10);

for j = 0 to 9;
   if %rem(j : 2) = 0;
      a = b + j; // cmt 1
   else;
      a = b - j; // cmt 2
   endif;
endfor;
// --- Padding start ---
dcl-s zzz int(10);
zzz = %lookup(99 : flags);

if zzz > 0;
   flags(zzz) = 0;
endif;
// --- Padding end ---
