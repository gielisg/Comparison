drop table if exists "informix".soracom_chg ;
create table "informix".soracom_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    description varchar(100),
    operator_id varchar(20),
    email varchar(254),
    quantity varchar(32),
    unit varchar(50),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

