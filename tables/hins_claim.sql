drop table if exists "informix".hins_claim ;
create table "informix".hins_claim 
  (
    ins_claim_id integer not null ,
    ins_status_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    ins_reason_id integer,
    event_ref integer,
    updated_by varchar(18,10) 
        default user not null 
  );

