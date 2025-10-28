drop table if exists "informix".comind_nap_hdr ;
create table "informix".comind_nap_hdr 
  (
    nap_hdr_id serial not null ,
    nap_name varchar(32) not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    from_date date not null ,
    to_date date not null ,
    bandwidth decimal(14,6) not null ,
    total_charge decimal(12,6),
    equiv_per_mb_chg decimal(12,6),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

