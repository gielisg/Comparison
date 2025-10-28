drop table if exists "informix".konica_chg ;
create table "informix".konica_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    km_reference varchar(10),
    suburb varchar(80),
    state varchar(20),
    serial_num varchar(100),
    model varchar(254),
    settlement_from varchar(10),
    settlement_to varchar(10),
    colour_start varchar(16),
    colour_end varchar(16),
    colour_volumne varchar(16),
    colour_rate varchar(16),
    colour_charge varchar(16),
    black_start varchar(16),
    black_end varchar(16),
    black_volume varchar(16),
    black_rate varchar(16),
    black_charge varchar(16),
    amount varchar(16),
    gst varchar(16),
    total_due varchar(16),
    record_type varchar(10),
    origin_rec_num integer,
    chg_start_dt datetime year to second not null ,
    chg_end_dt datetime year to second not null 
  );

