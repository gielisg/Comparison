drop table if exists "informix".po_rq_cancel ;
create table "informix".po_rq_cancel 
  (
    policy_id integer not null ,
    request_dt datetime year to second not null ,
    ins_status_id integer,
    ins_reason_id integer,
    event_ref integer,
    request_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

