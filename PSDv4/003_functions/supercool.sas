
/*** HELP START ***//*

This is the `supercool()` function. 
It says that things are super cool.

Syntax:
~~~~~~~~~~~~sas
%supercool(
  <data>
)
~~~~~~~~~~~~

Parameters:
  1) data - a character variable, an object of supercoolnes.
  
*//*** HELP END ***/

function supercool(data $) $;
  return(catx(" ", quote(data), "is Super Cool!"));
endfunc;
