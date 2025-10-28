drop table if exists "informix".hcba_tran ;
create table "informix".hcba_tran 
  (
    cba_tranid integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    cba_status_id integer,
    cba_reason_id integer,
    updated_by varchar(18,10) 
        default user not null 
  );

