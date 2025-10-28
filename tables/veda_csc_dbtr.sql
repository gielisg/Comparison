drop table if exists "informix".veda_csc_dbtr ;
create table "informix".veda_csc_dbtr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_num varchar(20) not null ,
    account_name varchar(120) not null ,
    tax varchar(20),
    contact_name varchar(100),
    bill_add_line1 varchar(80),
    bill_add_line2 varchar(80),
    bill_add_suburb varchar(32),
    bill_add_pcode varchar(10),
    bill_add_state varchar(32),
    bill_add_country char(2),
    street_add_line1 varchar(80),
    street_add_line2 varchar(80),
    street_add_subrb varchar(32),
    street_add_pcode varchar(10),
    street_add_state varchar(32),
    street_add_cntry char(2),
    currency char(3),
    phone_num varchar(32),
    fax_num varchar(32),
    email varchar(254),
    comment varchar(100),
    pricing_plan integer not null ,
    payment_term integer 
        default 30,
    dealer_name varchar(32),
    dealer_id varchar(10),
    abn varchar(20),
    acn varchar(20),
    account_status varchar(8) not null ,
    status_date datetime year to second,
    effect_date date not null ,
    status_id integer 
        default 0 not null ,
    debtor_code char(10),
    sp_cn_ref integer,
    status_narr varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

