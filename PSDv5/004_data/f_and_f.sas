/* File generated with help of SAS Packages Framework, version 20241027. */
data F_and_F;
  infile cards dlm=',';
  input name $ value;
  text = furiousfunction(name, value);
cards;
Vin,100
The Rock,99
;
run;
/*
  This comment will be populated to ALL files 
  in ALL directories.
*/
