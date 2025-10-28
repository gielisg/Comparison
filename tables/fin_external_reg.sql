drop table if exists "informix".fin_external_reg ;
create table "informix".fin_external_reg 
  (
    id serial not null ,
    request_dt datetime year to second 
        default current year to second not null ,
    type char(8) not null ,
    status char(10) not null ,
    fin_ref integer 
        default 0,
    body lvarchar(32000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('Open' ,'InProgress' ,'Completed' ,'Failed' ,'Cancelled' ,'TimedOut' ,'Invalid' )) 
              constraint "informix".fin_ext_reg_statu2,
    
    check (type IN ('Request' ,'Response' )) constraint "informix".fin_ext_reg_type2
  );

