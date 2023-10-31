
/*** HELP START ***//*

This is the `%dcmacro()` macro. 
It asks a question to a hero.

Syntax:
~~~~~~~~~~~~sas
%dcmacro(
  <hero>
)
~~~~~~~~~~~~

Parameters:
  1) hero - a name of a hero.

*//*** HELP END ***/


%macro dcmacro(hero)/secure;

  %put Hey %superq(hero)! Why so serious?!?!; 

%mend dcmacro;

/*** HELP START ***//*

Example 1. Basic use case:

~~~~~~~~~~~~sas

  %marvelmacro(BATMAN)

~~~~~~~~~~~~

*//*** HELP END ***/
