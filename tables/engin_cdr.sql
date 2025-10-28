drop table if exists "informix".engin_cdr ;
create table "informix".engin_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_id varchar(100,1),
    aparty varchar(40,1),
    bparty varchar(40,1),
    country varchar(50),
    dt_start datetime year to second,
    dt_end datetime year to second,
    call_duration varchar(20),
    call_type char(2),
    call_type_desc varchar(50),
    plan_name varchar(50,1),
    chrg_rate decimal(12,6),
    chrg_type char(1),
    call_charge decimal(12,0)
  );

