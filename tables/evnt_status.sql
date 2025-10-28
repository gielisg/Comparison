drop table if exists "informix".evnt_status ;
create table "informix".evnt_status 
  (
    evnt_stat_code char(2) not null ,
    evnt_stat_narr varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

