dcl-s i int(10);
dcl-s a int(10);
dcl-s b int(10);

for i = 0 to 9;
   // foo 2
   if %rem(i : 2) = 0;
      a = b + i;
   else;
      // foo 1
      a = b - i;
   endif;
endfor;
