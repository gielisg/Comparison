drop table if exists "informix".satcomeb_cdr ;
create table "informix".satcomeb_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_no varchar(120),
    invoice_no varchar(120),
    ocean_region varchar(150),
    sc_date char(10) not null ,
    sc_time char(8) not null ,
    origin_no varchar(64,10) not null ,
    subscriber varchar(100),
    destin_no varchar(64,10),
    sc_volume decimal(15,3) not null ,
    sc_unit varchar(10) not null ,
    sc_rate decimal(12,6),
    tot_charge decimal(12,6),
    equip_type varchar(150,10) not null ,
    calltocalltype varchar(150,10) not null ,
    callident_id char(4) not null ,
    origin_country varchar(120),
    destin_country varchar(120),
    provider varchar(20,6),
    upstream_rate integer,
    downstream_rate integer,
    datasession_id varchar(120)
  );

