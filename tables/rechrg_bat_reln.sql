drop table if exists "informix".rechrg_bat_reln ;
create table "informix".rechrg_bat_reln 
  (
    rechrg_batch_id integer not null ,
    rechrg_id integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

