
/*** HELP START ***//*

This is the `%supercool()` macro. 
It says my things are better.

Syntax:
~~~~~~~~~~~~sas
%supercool(
  <you>
 ,<data>
 ,<what>
)
~~~~~~~~~~~~

Parameters:
  1) you - a name to be called.
  2) data - an object of supercoolnes.
  3) what - a kind of supercoolnes.
  
See examples.

*//*** HELP END ***/

%macro supercool(you,data,what);
  %put Hey %superq(you)! My %superq(data) is %superq(what) then your %superq(data)!;
%mend supercool;


/*** HELP START ***//*

Example 1. Basic use case:

~~~~~~~~~~~~sas

  %supercool(Python, code, faster)

~~~~~~~~~~~~

Example 2. Other basic use case:

~~~~~~~~~~~~sas

  %supercool(Excel, table, bigger)

~~~~~~~~~~~~

*//*** HELP END ***/