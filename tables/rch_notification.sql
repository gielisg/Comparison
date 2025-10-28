drop table if exists "informix".rch_notification ;
create table "informix".rch_notification 
  (
    rch_nt_ref serial not null ,
    sp_cn_ref integer not null ,
    rechrg_type_id integer,
    status_id integer,
    min_value decimal(10,3) not null ,
    email_addr varchar(254),
    sms_number varchar(20),
    note varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

