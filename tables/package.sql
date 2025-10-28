drop table if exists "informix".package ;
create table "informix".package 
  (
    pkg_code serial not null ,
    pkggroupid integer not null ,
    pkg_type char(1) not null ,
    contract_code char(4) not null ,
    plan_code smallint not null ,
    start_date date not null ,
    end_date date not null ,
    pkg_narr varchar(128) not null ,
    dispnarr varchar(128) not null ,
    display_order smallint not null ,
    corp_ind char(1) not null ,
    price_nt_free_cl char(1) not null ,
    dflt_bill_int char(1) not null ,
    packtypecd char(2) not null ,
    cycle_lock char(1) 
        default 'N' not null ,
    pkg_srvc_filter char(1) 
        default 'A' not null ,
    pkg_comment varchar(255),
    pkg_url varchar(255),
    pkg_sales_rank smallint 
        default 0 not null ,
    pkg_value_rank smallint 
        default 0 not null ,
    requsr_name varchar(64),
    add_info1 varchar(254),
    add_info2 varchar(254),
    add_info3 varchar(254),
    add_info4 varchar(254),
    pds_url varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dflt_bill_int IN ('M' ,'Q' )) constraint "informix".dfl_bill_int32,
    
    check (pkg_srvc_filter IN ('A' ,'P' ,'N' ,'U' ,'R' ,'W' )) constraint "informix".pkg_srvc_filter29,
    
    check (pkg_type IN ('C' ,'G' )) constraint "informix".pkg_type22,
    
    check (cycle_lock IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (price_nt_free_cl IN ('N' ,'Y' )) constraint "informix".yes_no
    
    check (corp_ind IN ('Y' ,'N' )) constraint "informix".yes_no
  );

