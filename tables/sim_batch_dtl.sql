drop table if exists "informix".sim_batch_dtl ;
create table "informix".sim_batch_dtl 
  (
    sim_batch_id integer not null ,
    sim_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

