drop table if exists "informix".ins_claim ;
create table "informix".ins_claim 
  (
    ins_claim_id serial not null ,
    ins_claim_ref char(10),
    ins_claim_date datetime year to second,
    insurer_id integer not null ,
    ins_source_id integer not null ,
    ins_status_id integer not null ,
    event_ref integer not null ,
    ins_reason_id integer not null ,
    ins_claim_advice datetime year to second,
    claim_method_id integer not null ,
    contact_code char(10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

