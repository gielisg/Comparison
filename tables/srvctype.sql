drop table if exists "informix".srvctype ;
create table "informix".srvctype 
  (
    srvctypecode char(4) not null ,
    srvctypedisp char(1) 
        default 'Y' not null ,
    srvctypeordr integer 
        default 0 not null ,
    srvctypenarr varchar(32) not null ,
    srvctypebillnarr varchar(32),
    srvctypedll varchar(254) not null ,
    srvctypeicon varchar(254),
    typmnuid integer,
    instmnuid integer,
    srvctype_ipnd char(5) 
        default null,
    srvcdestnarr varchar(32) not null ,
    exclude_ipnd char(1) 
        default 'N' not null ,
    lock_sim_puk char(1) 
        default 'N' not null ,
    srvctype_grpcode char(4) 
        default 'DFLT' not null ,
    add_info1 varchar(254),
    add_info2 varchar(254),
    add_info3 varchar(254),
    add_info4 varchar(254),
    incl_spend_alert char(1) 
        default 'N' not null ,
    init_disrchgrace smallint,
    no_rch_dis_grace smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((init_disrchgrace > 0 ) OR (init_disrchgrace IS NULL ) ) constraint "informix".greater_0_null15,
    
    check ((no_rch_dis_grace > 0 ) OR (no_rch_dis_grace IS NULL ) ) constraint "informix".greater_0_null16,
    
    check ((srvctype_ipnd IS NULL ) OR (srvctype_ipnd IN ('FAX' ,'FCALL' ,'FIXED' 
              ,'LCALL' ,'MOBIL' ,'MODEM' ,'ONE3' ,'PAGER' ,'PCS' ,'PAYPH' ,'PRVPY' 
              ,'PREM' ,'WLL' )) ) constraint "informix".srvctype_ipnd3,
    
    check (exclude_ipnd IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (lock_sim_puk IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (srvctypedisp IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (incl_spend_alert IN ('Y' ,'N' ,'E' ,'V' )) constraint "informix".ynev
  );

