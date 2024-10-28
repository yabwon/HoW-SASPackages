/* File generated with help of SAS Packages Framework, version 20241027. */
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
/*
  This comment will be populated to ALL files 
  in ALL directories.
*/
