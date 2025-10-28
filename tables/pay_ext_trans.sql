drop table if exists "informix".pay_ext_trans ;
create table "informix".pay_ext_trans 
  (
    trans_id serial not null ,
    status_id integer 
        default 1 not null ,
    nt_file_num integer not null ,
    trans_type_code integer,
    trans_dt datetime year to second 
        default current year to second not null ,
    orig_trans_ref varchar(50),
    debtor_code varchar(20,10),
    payer_id varchar(50,10),
    payer_id_default char(1) 
        default 'N' not null ,
    fin_ref integer,
    fin_num varchar(20,10),
    trans_ref varchar(50,10),
    trans_amt decimal(8,2),
    reas_code varchar(10,2),
    settle_date date,
    orig_trans_dt datetime year to second,
    bankdpstid integer,
    bank_acct_id integer,
    svc_prov_bsb char(7),
    svc_prov_acc char(20),
    customer_bsb char(7),
    customer_acc char(20),
    customer_cheq_no varchar(30,15),
    notes varchar(254),
    merchant_id char(20),
    credit_card_no char(20),
    credit_card_type char(15),
    card_holder_name varchar(60,30),
    expiry_date char(5),
    pay_source_id integer,
    add_info varchar(254),
    pay_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (payer_id_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

