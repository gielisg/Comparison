drop table if exists "informix".errors ;
create table "informix".errors 
  (
    err_ser_num serial not null ,
    object varchar(18) not null ,
    err_key varchar(20),
    err smallint,
    isamerr smallint,
    errmsg varchar(255),
    errdt datetime year to second 
        default current year to second not null ,
    erruser varchar(18) 
        default user not null ,
    status char(1) 
        default 'U' not null ,
    statusdt datetime year to second,
    reporteddt datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('R' ,'U' )) constraint "informix".err_status13
  );

