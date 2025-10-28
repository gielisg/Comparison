drop table if exists "informix".ins_xfer_file ;
create table "informix".ins_xfer_file 
  (
    xfer_file_id serial not null ,
    file_type_id integer not null ,
    xfer_file_name varchar(255),
    xfer_create_dt datetime year to second,
    xfer_tx_rx_dt datetime year to second,
    xfer_addr varchar(32),
    xfer_rcrd_cnt integer,
    ins_status_id integer,
    event_ref integer,
    ins_reason_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

