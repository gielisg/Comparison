drop table if exists "informix".tteg_cdr ;
create table "informix".tteg_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    orig_line_number integer not null ,
    site_id char(4) not null ,
    unit_number varchar(32),
    meter_number varchar(32) not null ,
    reading_time varchar(12),
    reading_date date not null ,
    reading_type char(3) not null ,
    record_type char(6) not null ,
    day_type char(6) not null ,
    tariff_type varchar(10) 
        default 'ALL' not null ,
    reading integer,
    k_factor integer 
        default 1 not null ,
    raw_reading integer,
    prev_reading integer,
    tot_period_solar integer,
    type_days integer,
    billing_days integer,
    days_in_period integer,
    gcr_solar_credits integer,
    start_usage decimal(13,3),
    max_usage decimal(13,3),
    coe_factor decimal(5,3),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

