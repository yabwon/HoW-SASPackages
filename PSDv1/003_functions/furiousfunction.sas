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
