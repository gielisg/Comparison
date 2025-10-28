drop table if exists "informix".med_stat_reas ;
create table "informix".med_stat_reas 
  (
    med_stat_reas_id serial not null ,
    description varchar(254,32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

