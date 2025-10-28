drop table if exists "informix".dftadsl_cdr ;
create table "informix".dftadsl_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    service_phone varchar(20) not null ,
    state_id varchar(10),
    avail_dt datetime year to second,
    service_id integer,
    service_desc varchar(130),
    session_id integer,
    start_dt datetime year to second,
    vol_type varchar(30),
    vol_up decimal(16),
    vol_down decimal(16),
    vol_up_exc decimal(16),
    vol_down_exc decimal(16)
  );

