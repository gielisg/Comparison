drop table if exists "informix".ordr ;
create table "informix".ordr 
  (
    ordrid serial not null ,
    ordrnum varchar(20,10) not null ,
    debtor_code char(10) not null ,
    ordrdate date not null ,
    ordrclsscode char(4) not null ,
    typeid integer 
        default 1 not null ,
    ordrsrcecode char(4) not null ,
    ordrprtycode char(4) not null ,
    ordrstatcode char(4) not null ,
    ordrstatdatm datetime year to second not null ,
    ordr_auth_code char(10),
    ordr_repr_code char(10),
    dealer_id char(10),
    ordr_reference varchar(50),
    ordrnote varchar(254),
    acc_pay_meth_ref integer,
    address_ref integer,
    wait_reas_code char(2),
    campaign_code char(4),
    media_ref char(10),
    media_code char(4),
    bus_unit_code char(2),
    salesperson char(10),
    contact_code char(10),
    cont_ord_num char(10),
    ord_reas_code char(2),
    ord_priority smallint 
        default 5 not null ,
    del_method char(1),
    courier_code char(4),
    cust_sign_flag char(1),
    voice_sign_flag char(1),
    exp_res_date date,
    fu_date date,
    fu_reas_code char(2),
    date_required date,
    contact_name varchar(254),
    cont_phone_num varchar(20),
    cont_reference varchar(50),
    allow_billing char(1),
    bill_on_quote char(1),
    bill_wholeoncomp char(1),
    ordr_proj_code varchar(30),
    ordr_proj_name varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (allow_billing IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (bill_on_quote IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (bill_wholeoncomp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

