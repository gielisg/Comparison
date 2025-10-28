drop table if exists "informix".sp_cn_history ;
create table "informix".sp_cn_history 
  (
    sp_cn_history_id serial not null ,
    sp_cn_ref integer not null ,
    from_dt datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    phone_num varchar(64) not null ,
    sp_cn_narr varchar(64),
    srvctypecode char(4) not null ,
    sp_connected datetime year to second not null ,
    sp_disconnected datetime year to second not null ,
    sp_cn_status char(3) not null ,
    sys_status char(3) not null ,
    event_ref integer,
    sp_enq_passwd char(32) not null ,
    sp_mailbox_num char(10),
    ori_updated_by varchar(18,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

