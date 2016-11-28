drop program vvk_act4_test:group1 go
create program vvk_act4_test:group1
 
/************************************************************
 VVK: Vincent
 Activity 4 (overall program) it calls:
 vvk_act4a_test
 vvk_act4b_test
 vvk_act4c_test
*************************************************************/

/*************************************************************
  INCLUDE FILES
**************************************************************/

/* includes will be compiled; so does not work for Programs, since programs cannot be nested
%i CCLUSERDIR:vvk_act4a_test.prg
%i CCLUSERDIR:vvk_act4b_test.prg
%i CCLUSERDIR:vvk_act4c_test.prg
*/

EXECUTE vvk_act4a_test

EXECUTE vvk_act4b_test

EXECUTE vvk_act4c_test

 
end go

