
/*** HELP START ***//*

These are:
- the `infamous` numeric informat,
- the `infamous` numeric format. 

They are used internally to generate the `sergio` dataset.

The help info is good, sometimes may be ugly, but never is bad! 

*//*** HELP END ***/


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
