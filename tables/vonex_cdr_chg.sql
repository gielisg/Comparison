drop table if exists "informix".vonex_cdr_chg ;
create table "informix".vonex_cdr_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_id varchar(20),
    charge_type char(1),
    start_date varchar(22),
    date_end varchar(22),
    cl_duration integer,
    origin varchar(80),
    destination varchar(63),
    phone_number varchar(63),
    retailcharge decimal(13,3),
    wh_charge decimal(13,3),
    tariff_code varchar(100),
    tariffname varchar(200),
    rollupname varchar(100),
    charge_desc varchar(200),
    charge_units integer,
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

