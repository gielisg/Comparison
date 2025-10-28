drop table if exists "informix".booking ;
create table "informix".booking 
  (
    booking_id serial not null ,
    booking_ref char(20) not null ,
    booking_date date not null ,
    booked_start_tm datetime year to minute,
    booked_end_tm datetime year to minute,
    actual_start_tm datetime year to minute,
    actual_end_tm datetime year to minute,
    time_band_class integer,
    status_id integer,
    booked_by varchar(50) not null ,
    booked_date date 
        default today not null ,
    booked_for char(10),
    email_confirm char(1),
    cost decimal(8,3) 
        default 0.000,
    forfeit_cost char(1),
    cust_note varchar(254),
    sp_note varchar(254),
    attrib1 varchar(20),
    attrib2 varchar(20),
    attrib3 varchar(20),
    attrib4 varchar(20),
    attrib5 varchar(20),
    attrib6 varchar(20),
    attrib7 varchar(20),
    attrib8 varchar(20),
    attrib9 varchar(20),
    attrib10 varchar(20),
    attrib11 varchar(20),
    attrib12 varchar(20),
    sp_cn_ref integer,
    asset_sp_cn_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (email_confirm IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (forfeit_cost IN ('Y' ,'N' )) constraint "informix".yes_no
  );

