drop table if exists "informix".fin_hdr ;
create table "informix".fin_hdr 
  (
    fin_ref serial not null ,
    bus_unit_code char(2) not null ,
    contact_code char(10) not null ,
    sp_cn_ref integer,
    parent_ref integer,
    fin_src_code char(2) not null ,
    fin_type_code char(2) not null ,
    fin_catg_code char(2),
    fin_stat_code char(2) not null ,
    fin_reas_code char(2),
    fin_num char(20) not null ,
    fin_date date 
        default today not null ,
    fin_due_date date not null ,
    bill_ref integer,
    open_amount decimal(10,2),
    fin_total decimal(10,2) not null ,
    tax_amount decimal(10,2) not null ,
    fin_total_rnd decimal(18,10) 
        default 0.0000000000 not null ,
    tax_amount_rnd decimal(18,10) 
        default 0.0000000000 not null ,
    oth_ref varchar(254),
    acct_dbcr char(1) 
        default 'D' not null ,
    banked char(1) 
        default 'N' not null ,
    created_dt datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (acct_dbcr IN ('C' ,'D' )) constraint "informix".check
  );

