drop table if exists "informix".inst_stat_reas ;
create table "informix".inst_stat_reas 
  (
    status_reas_id integer not null ,
    status_reas_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

