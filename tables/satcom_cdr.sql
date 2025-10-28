drop table if exists "informix".satcom_cdr ;
create table "informix".satcom_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cl_start_dtm datetime year to second,
    initiator varchar(64),
    init_country varchar(40),
    called_to varchar(64),
    called_country varchar(40),
    call_type varchar(40),
    volume decimal(12,4),
    unit char(4),
    rate decimal(12,4),
    charge decimal(12,4),
    equipment varchar(64),
    equipment_service varchar(40),
    upstream_rate integer,
    downstream_rate integer,
    stacom_call_id char(8),
    call_identi_id char(4)
  );

