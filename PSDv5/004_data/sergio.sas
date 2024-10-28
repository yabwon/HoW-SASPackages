/* File generated with help of SAS Packages Framework, version 20241027. */
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
/*
  This comment will be populated to ALL files 
  in ALL directories.
*/
