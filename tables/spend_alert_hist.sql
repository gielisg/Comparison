drop table if exists "informix".spend_alert_hist ;
create table "informix".spend_alert_hist 
  (
    spend_alert_ref serial not null ,
    contact_code char(10) not null ,
    sp_cn_ref integer not null ,
    subsdiscid integer not null ,
    dcelaggrid integer,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    alert_perc decimal(8,3) not null ,
    usage_perc decimal(8,3) not null ,
    spcnpramamnt decimal(20,10) not null ,
    spcnpramused decimal(20,10) not null ,
    unit char(1) not null ,
    alert_type varchar(32) not null ,
    narrative varchar(255) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

