drop table if exists "informix".gl_acct ;
create table "informix".gl_acct 
  (
    gl_acctcode varchar(45) not null ,
    gl_acctnarr varchar(128) not null ,
    gl_acctordr integer 
        default 3 not null ,
    gl_acctdisp char(1) 
        default 'Y' not null ,
    type_code char(1) 
        default 'R' not null ,
    bus_unit_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (gl_acctdisp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

