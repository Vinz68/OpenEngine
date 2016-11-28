drop program convert_datetime_VVK :dba go
create program convert_datetime_VVK:dba

set Date_value1 = CNVTDATETIME("07-OCT-1992 12:30.00") 
set Date_value2 = CNVTDATETIME("10-JAN-2000") 
set Date_value3 = CNVTDATETIME(CNVDATE(080196), 0) 
set Date_value4 = CNVTDATETIME(CURDATE, CURTIME3)
set Date_value5 = CNVTDATETIME(CURDATE, 235959) 

call echo (build("the date value 1 is : ",Date_value1))
call echo (build("the date value 2 is : ",Date_value2))
call echo (build("the date value 3 is : ",Date_value3))
call echo (build("the date value 4 is : ",Date_value4))
call echo (build("the date value 5 is : ",Date_value5))




end go

