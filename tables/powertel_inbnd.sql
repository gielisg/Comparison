drop table if exists "informix".powertel_inbnd ;
create table "informix".powertel_inbnd 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(6),
    num_dialled varchar(30),
    num_origin varchar(30),
    location varchar(30),
    state varchar(3),
    exchange varchar(30),
    cl_start_dt datetime year to second,
    call_durn_sec interval second(8) to fraction(3),
    call_status varchar(30),
    answering_point varchar(30),
    call_hour integer,
    call_weekday varchar(10),
    call_day_month integer,
    call_month varchar(10)
  );

