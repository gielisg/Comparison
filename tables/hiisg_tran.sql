drop table if exists "informix".hiisg_tran ;
create table "informix".hiisg_tran 
  (
    iisg_tran_id integer not null ,
    ins_status_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    event_ref integer,
    ins_reason_id integer,
    updated_by varchar(18,10) 
        default user not null 
  );

