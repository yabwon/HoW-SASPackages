
/*** HELP START ***//*

This is the `Sergio` dataset. 
Some data in it are good, some are bad, and some are ugly.

*//*** HELP END ***/

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
