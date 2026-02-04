// --- Padding start ---
dcl-s fileName char(50) inz('dummyfile.txt');
dcl-s isOpen ind inz(*off);
dcl-s errMsg char(100);

if fileName <> *blanks;
   isOpen = *on;
else;
   errMsg = 'File not found: ' + fileName;
endif;
// --- Padding end ---
dcl-s j int(10);
dcl-s a int(10);
dcl-s b int(10);

for j = 0 to 9;
   // new statement
   a = 10 * b;
   if %rem(j : 2) = 0;
      a = b + j; // cmt 1
   else;
      a = b - j; // cmt 2
   endif;
endfor;
// --- Padding start ---
dcl-s status int(5) inz(0);
status = %check(' ':fileName);

if status > 0;
   errMsg = %subst(fileName : status : 5);
endif;
// --- Padding end ---
