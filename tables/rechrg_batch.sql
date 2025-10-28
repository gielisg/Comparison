drop table if exists "informix".rechrg_batch ;
create table "informix".rechrg_batch 
  (
    rechrg_batch_id serial not null ,
    batch_num varchar(50,20),
    rchbat_status_id integer,
    rchbat_reason_id integer,
    rchg_sta_reas_dt datetime year to second,
    comments text,
    bus_unit_code char(2),
    channel char(10),
    download_pass char(32) 
        default 'password' not null ,
    downloaded_tm datetime year to second,
    downloaded_by varchar(18,10),
    activation_pass char(32) 
        default 'password' not null ,
    activated_tm datetime year to second,
    activated_by varchar(18,10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

