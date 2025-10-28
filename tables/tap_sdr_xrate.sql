drop table if exists "informix".tap_sdr_xrate ;
create table "informix".tap_sdr_xrate 
  (
    rate_date date not null ,
    actual_rate decimal(10,6) not null ,
    pegged_rate decimal(10,6) not null ,
    lower_band_rate decimal(10,6) not null ,
    upper_band_rate decimal(10,6) not null ,
    rate_date_wef date
  );

