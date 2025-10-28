drop table if exists "informix".hins_xfer_file ;
create table "informix".hins_xfer_file 
  (
    xfer_file_id integer not null ,
    ins_status_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    ins_reason_id integer,
    event_ref integer,
    updated_by varchar(18,10) 
        default user not null 
  );

