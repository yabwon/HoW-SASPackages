/* File generated with help of SAS Packages Framework, version 20241027. */
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
/*
  This comment will be populated to ALL files 
  in ALL directories.
*/
