drop table if exists "informix".nextep_cost ;
create table "informix".nextep_cost 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    site_id varchar(80,8) not null ,
    cost_desc varchar(200,23) not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second,
    ip_address varchar(120),
    qty integer,
    volume_mb varchar(20),
    rate decimal(12,3),
    ex_gst_price decimal(12,3) not null ,
    gst_amt decimal(12,3),
    amt_with_gst decimal(12,3),
    chg_end_dt datetime year to second not null 
  );

