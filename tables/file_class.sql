drop table if exists "informix".file_class ;
create table "informix".file_class 
  (
    file_class_code char(3) not null ,
    file_class_narr char(32) not null ,
    inc_in_bill_chks char(1) 
        default 'N' not null ,
    
    check (inc_in_bill_chks IN ('Y' ,'N' )) constraint "informix".yes_no
  );

