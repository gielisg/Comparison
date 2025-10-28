drop table if exists "informix".sp_connection ;
create table "informix".sp_connection 
  (
    sp_cn_ref serial not null ,
    phone_num varchar(120) not null ,
    sp_cn_narr varchar(64,1),
    nt_connected datetime year to second,
    nt_cn_ref integer,
    srvctypecode char(4) 
        default 'GSM' not null ,
    subscriber_code char(10) not null ,
    sp_connected datetime year to second not null ,
    sp_disconnected datetime year to second not null ,
    cred_limit smallint,
    cred_limit_actn char(1),
    sp_cn_status char(3) not null ,
    sys_status char(3) not null ,
    sp_enq_passwd char(32),
    sp_mailbox_num char(10),
    ipnd_listed char(2) 
        default 'UL' not null ,
    ipnd_usage_code char(1) 
        default 'N' not null ,
    ipnd_alt_flag char(1) 
        default 'F' not null ,
    invoice_interval integer 
        default null,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (invoice_interval IN (NULL ,1 ,3 ,6 ,12 )) constraint "informix".invoice_nuintvl5,
    
    check (ipnd_listed IN ('UL' ,'LE' ,'SA' )) constraint "informix".ipnd_listed3,
    
    check (ipnd_usage_code IN ('R' ,'B' ,'G' ,'C' ,'N' )) constraint "informix".ipnd_usage_code3,
    
    check (ipnd_alt_flag IN ('T' ,'F' )) constraint "informix".true_false3
  );

