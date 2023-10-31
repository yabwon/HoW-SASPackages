
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

%marvelmacro(IRONMAN);
%marvelmacro(HULK);
%marvelmacro(STARLORD);
%marvelmacro(DEADPOOL);
%marvelmacro(BART);


/* dcmacro macro */

%macro dcmacro(hero)/secure;

  %put Hey %superq(hero)! Why so serious?!?!; 

%mend dcmacro;

%dcmacro(BATMAN)


/* fastformat format & furiousfunction function & f_and_f data */

proc format;
  value $ fastformat (default=8)
    "VIN" = "Diesel"
    other = "Gasoline"
  ;
run;


/**/

proc FCMP outlib = work.f.p;
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
run;

options cmplib=work.f;

/**/

data F_and_F;
  infile cards dlm=',';
  input name $ value;
  text = furiousfunction(name, value);
cards;
Vin,100
The Rock,99
;
run;

/*  */
proc print data=F_and_F noobs;
  var text;
run;



/* infamous informat AND format ! */

proc format;
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
run;

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
proc print;
run;




/* supercool macro*/

%macro supercool(you,data,what);
  %put Hey %superq(you)! My %superq(data) is %superq(what) then your %superq(data)!;
%mend supercool;


%supercool(Python, code, faster)

%supercool(Excel, table, bigger)


/* supercool data */

data supercool;
  dataCool = "Data, data cool! This data is Super Cool!";
  label 
    dataCool = "Label for Super Cool data";
run;

proc print data=supercool label;
run;


/* supercool function */

proc FCMP outlib = work.f.p;
  function supercool(data $) $;
    return(catx(" ", quote(data), "is Super Cool!"));
  endfunc;
run;

options cmplib=work.f;

data _null_;
  x = supercool("WUSS Conference 2023");
  put x=;
run;
