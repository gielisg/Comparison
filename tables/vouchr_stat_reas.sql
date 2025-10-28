drop table if exists "informix".vouchr_stat_reas ;
create table "informix".vouchr_stat_reas 
  (
    reason_id integer not null ,
    reason_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

