
/*** HELP START ***//*

This is the `F_and_F` dataset. 
The data are fast and furious.

It requires the `furiousfunction` function and 
the `fastformat` character format to be generated.
  
*//*** HELP END ***/

data F_and_F;
  infile cards dlm=',';
  input name $ value;
  text = furiousfunction(name, value);
cards;
Vin,100
The Rock,99
;
run;
