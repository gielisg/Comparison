drop table if exists "informix".iisg_xfer ;
create table "informix".iisg_xfer 
  (
    iisg_tran_id integer not null ,
    xfer_file_id integer not null 
  );

