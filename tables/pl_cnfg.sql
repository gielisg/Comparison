drop table if exists "informix".pl_cnfg ;
create table "informix".pl_cnfg 
  (
    last_poll_dt datetime year to second 
        default current year to second not null ,
    poll_interval integer 
        default 0 not null ,
    num_of_pl smallint 
        default 0 not null ,
    num_ords_in_pl smallint 
        default 0 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

