data F_and_F;
  infile cards dlm=',';
  input name $ value;
  text = furiousfunction(name, value);
cards;
Vin,100
The Rock,99
;
run;
