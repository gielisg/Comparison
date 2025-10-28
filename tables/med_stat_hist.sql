drop table if exists "informix".med_stat_hist ;
create table "informix".med_stat_hist 
  (
    med_stat_ref serial not null ,
    med_id integer,
    med_status_id integer,
    stat_wefr datetime year to second 
        default current year to second not null ,
    stat_weto datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

