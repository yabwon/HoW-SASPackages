

/*##$##-CODE-BLOCK-START-##$## 001_macro(marvelmacro) */

/* marvelmacro macro */

%macro marvelmacro(hero)/secure;

%if %superq(hero)=HULK %then
  %do;
    %put "Hulk will, Hulk will... smash you!";
    %goto EOM;
  %end;

%if %superq(hero)=IRONMAN %then
  %do;
    %put "I'm not a superhero type...";
    %put "The truth is... I am Iron Man.";
    %goto EOM;
  %end;

%if %superq(hero)=DEADPOOL %then
  %do;
    %put "I'll draw a Unicorn for Logan <3 B-] <3";
    %goto EOM;
  %end;

%if %superq(hero)=STARLORD %then
  %do;
    %put "Squeak, squeak..";
    %put ,.!.. ;
    %put "Oh, I'm sorry. I didn't know how this machine worked.";
    %goto EOM;
  %end;


  %put Hey %superq(hero)! Tina says: "We don't need another heeeeroooo!!!";

%EOM:
%mend marvelmacro;
                                                                             
/*
/*##$##-CODE-BLOCK-START-##$## 999_test(test) */
%marvelmacro(IRONMAN);
%marvelmacro(HULK);
%marvelmacro(STARLORD);
%marvelmacro(DEADPOOL);
%marvelmacro(BART);
/*##$##-CODE-BLOCK-END-##$## 999_test(test) */
*/

/*##$##-CODE-BLOCK-END-##$## 001_macro(marvelmacro) */

/*##$##-CODE-BLOCK-START-##$## 001_macro(dcmacro) */
/* dcmacro macro */

%macro dcmacro(hero)/secure;

  %put Hey %superq(hero)! Why so serious?!?!; 

%mend dcmacro;

/*
/*##$##-CODE-BLOCK-START-##$## 999_test(test) */
%dcmacro(BATMAN)
/*##$##-CODE-BLOCK-END-##$## 999_test(test) */
*/

/*##$##-CODE-BLOCK-END-##$## 001_macro(dcmacro) */

/* fastformat format & furiousfunction function & f_and_f data */


proc format;
/*##$##-CODE-BLOCK-START-##$## 002_formats(fastformat) */
  value $ fastformat (default=8)
    "VIN" = "Diesel"
    other = "Gasoline"
  ;
/*##$##-CODE-BLOCK-END-##$## 002_formats(fastformat) */
run;


/**/

proc FCMP outlib = work.f.p;
/*##$##-CODE-BLOCK-START-##$## 003_functions(furiousfunction) */
  function furiousfunction(user $,value) $;
    length result $ 128;
    
    result = catx(" ", 
                  user, 
                  "is", 
                  put(value/100, percent12.), 
                  put(upcase(user), $fastformat.)
                  );
    
    return(result);
  endfunc;
/*##$##-CODE-BLOCK-END-##$## 003_functions(furiousfunction) */
run;

options cmplib=work.f;

/**/
/*##$##-CODE-BLOCK-START-##$## 004_data(F_and_F) */
data F_and_F;
  infile cards dlm=',';
  input name $ value;
  text = furiousfunction(name, value);
cards;
Vin,100
The Rock,99
;
run;
/*##$##-CODE-BLOCK-END-##$## 004_data(F_and_F) */

/*##$##-CODE-BLOCK-START-##$## 999_test(test) */
/*  */
proc print data=F_and_F noobs;
  var text;
run;
/*##$##-CODE-BLOCK-END-##$## 999_test(test) */


/* infamous informat AND format ! */

proc format;
/*##$##-CODE-BLOCK-START-##$## 002_formats(infamous) */
  invalue infamous (default=8 upcase)
    "THE GOOD" = 1
    "THE BAD" = -1
    "THE UGLY" = 0
    other = .
  ;
  value infamous (default=8)
    0<-HIGH = "THE GOOD"
    LOW-<0  = "THE BAD"
    other   = "THE UGLY"
  ;
/*##$##-CODE-BLOCK-END-##$## 002_formats(infamous) */
run;

/*##$##-CODE-BLOCK-START-##$## 004_data(Sergio) */
data Sergio;
  infile cards dlm=",";
  input x :infamous. y;
  format y infamous.;
cards;
the good, 42
THE BAD, -17
tHe UgLy, 0
; 
run;
/*##$##-CODE-BLOCK-END-##$## 004_data(Sergio) */

/*##$##-CODE-BLOCK-START-##$## 999_test(test) */
proc print data=Sergio label;
run;
/*##$##-CODE-BLOCK-END-##$## 999_test(test) */



/* supercool macro*/

/*##$##-CODE-BLOCK-START-##$## 001_macro(supercool) */

%macro supercool(you,data,what);
  %put Hey %superq(you)! My %superq(data) is %superq(what) than your %superq(data)!;
%mend supercool;

/*##$##-CODE-BLOCK-END-##$## 001_macro(supercool) */

/*##$##-CODE-BLOCK-START-##$## 999_test(test) */
%supercool(Python, code, faster)

%supercool(Excel, table, bigger)
/*##$##-CODE-BLOCK-END-##$## 999_test(test) */

/*##$##-CODE-BLOCK-START-##$## 005_lazydata(supercool) */
/* supercool data */

data supercool;
  dataCool = "Data, data cool! This data is Super Cool!";
  label 
    dataCool = "Label for Super Cool data";
run;

/*##$##-CODE-BLOCK-END-##$## 005_lazydata(supercool) */

/*##$##-CODE-BLOCK-START-##$## !to_ignore(ignore) */
proc print data=supercool label;
run;
/*##$##-CODE-BLOCK-END-##$## !to_ignore(ignore) */

/* supercool function */

proc FCMP outlib = work.f.p;
/*##$##-CODE-BLOCK-START-##$## 003_functions(supercool) */
  function supercool(data $) $;
    return(catx(" ", quote(data), "is Super Cool!"));
  endfunc;
/*##$##-CODE-BLOCK-END-##$## 003_functions(supercool) */
run;

options cmplib=work.f;

/*##$##-CODE-BLOCK-START-##$## 999_test(test) */
data _null_;
  x = supercool("WUSS Conference 2023");
  put x=;
run;
/*##$##-CODE-BLOCK-END-##$## 999_test(test) */



/*##$##-CODE-BLOCK-START-##$## _ALL_(_ALL_) */
/*
  This comment will be populated to ALL files 
  in ALL directories.
*/
/*##$##-CODE-BLOCK-END-##$## _ALL_(_ALL_) */
 