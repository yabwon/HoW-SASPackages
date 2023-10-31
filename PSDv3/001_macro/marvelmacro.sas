/*** HELP START ***//*

This is the `%marvelmacro()` macro. 
It provides catch phrases for some heroes.

Syntax:
~~~~~~~~~~~~sas
%marvelmacro(
  <hero>
)
~~~~~~~~~~~~

Parameters:
  1) hero - required, a name of a hero.

Macro declaration is:

~~~~~~~~~~~~sas
*//*** HELP END ***/

/*** HELP START ***/
%macro marvelmacro(hero) / secure;
/*** HELP END ***/

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

/*** HELP START ***//*
~~~~~~~~~~~~

Example 1. Basic use case:

~~~~~~~~~~~~sas

  %marvelmacro(HULK)

~~~~~~~~~~~~

*//*** HELP END ***/
