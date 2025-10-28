drop table if exists "informix".pay_requests ;
create table "informix".pay_requests 
  (
    pay_request_id serial not null ,
    priority smallint 
        default 100 not null ,
    contact_code char(10) not null ,
    fin_ref integer,
    acc_pay_meth_ref integer not null ,
    batch_id integer,
    pay_provider integer not null ,
    pay_source_id integer not null ,
    request_type integer,
    request_dt datetime year to second 
        default current year to second not null ,
    surcharge_amount decimal(8,2),
    request_amount decimal(8,2) not null ,
    tax_amount decimal(8,2) 
        default 0.00 not null ,
    reference_num char(30),
    status_id integer 
        default 1 not null ,
    reason_id integer,
    settle_date date,
    reconciled char(1) 
        default 'N' not null ,
    auth_num char(30),
    pre_auth_num char(20),
    man_auth char(1) 
        default 'N' not null ,
    stan varchar(50),
    provider_ref varchar(40,10),
    rec_provider_ref varchar(40),
    num_submits integer not null ,
    last_submitted datetime year to second,
    num_polls integer 
        default 0 not null ,
    last_polled datetime year to second,
    last_err_code varchar(20,10),
    last_err_desc varchar(254),
    requesting_user char(20) not null ,
    merch_num varchar(50),
    orig_request_id varchar(40),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reconciled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (man_auth IN ('Y' ,'N' )) constraint "informix".yes_no
  );

