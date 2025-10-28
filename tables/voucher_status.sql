drop table if exists "informix".voucher_status ;
create table "informix".voucher_status 
  (
    status_id integer not null ,
    status_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

