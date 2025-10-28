drop table if exists "informix".adj_hdr ;
create table "informix".adj_hdr 
  (
    adj_ref serial not null ,
    adj_type_ref integer not null ,
    contact_code char(10) not null ,
    adj_stat_code char(2) not null ,
    adj_reas_code char(2) not null ,
    cn_fin_ref integer,
    bill_note varchar(50,1),
    adj_total decimal(10,2) 
        default 0.00 not null ,
    tax_amount decimal(10,2) 
        default 0.00 not null ,
    adj_total_rnd decimal(12,6) 
        default 0.000000 not null ,
    tax_amount_rnd decimal(12,6) 
        default 0.000000 not null ,
    auth_req char(1) 
        default 'Y' not null ,
    auth_by varchar(18,10),
    auth_dt datetime year to second,
    auth_ref varchar(254,40),
    auth_note varchar(254,40),
    created_dt datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (auth_req IN ('Y' ,'N' )) constraint "informix".yes_no
  );

