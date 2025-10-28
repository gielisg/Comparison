drop table if exists "informix".spend_alert_cnfg ;
create table "informix".spend_alert_cnfg 
  (
    spend_cnfg_ref serial not null ,
    contact_code char(10) not null ,
    sp_cn_ref integer,
    alert_enabled char(1) 
        default 'Y' not null ,
    send_sms char(1) 
        default 'Y' not null ,
    send_email char(1) 
        default 'Y' not null ,
    alert1_perc decimal(6,3) not null ,
    alert2_perc decimal(6,3),
    alert3_perc decimal(6,3),
    alert4_perc decimal(6,3),
    alert5_perc decimal(6,3),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (alert_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (send_sms IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (send_email IN ('Y' ,'N' )) constraint "informix".yes_no
  );

