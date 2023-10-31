
/*** HELP START ***//*

This is the `furiousfunction` function.

The function prints the name and percent of diesel or gasoline.

Returns a character value.

It requires the `fastformat` character format to work.

Syntax:
~~~~~~~~~~~~sas
furiousfunction(
  <user>
 ,<value>
)
~~~~~~~~~~~~

Parameters:
  1) user - a character variable, a name to be called.
  2) value - a numeric variable, a percent value to be displayed.

*//*** HELP END ***/


function furiousfunction(user $,value) $;
  length result $ 128;
  
  result = catx(" ", 
                user, 
                "is", 
                put(value/100, percent12.), 
                put(upcase(user), $fastformat.)
                );
  
  return(result);
endfunc;
