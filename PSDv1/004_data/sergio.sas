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
