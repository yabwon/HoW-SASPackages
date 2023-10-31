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
