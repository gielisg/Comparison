drop table if exists "informix".mobw2_cdr ;
create table "informix".mobw2_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    tel_no varchar(50),
    imsi varchar(60,15),
    external_ref varchar(10),
    event_id varchar(20),
    event_desc varchar(50),
    package_id varchar(30),
    package_name varchar(50),
    charge_start datetime year to second,
    charge_end datetime year to second,
    called_number varchar(50),
    call_duration integer,
    location varchar(10),
    qty_charged integer,
    rated_price decimal(13,5),
    bundle_ind char(1),
    charged_price decimal(13,5)
  );

