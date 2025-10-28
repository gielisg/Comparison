drop table if exists "informix".rpd_pid_nz_cdr ;
create table "informix".rpd_pid_nz_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    debtor_code char(10) not null ,
    sp_cn_ref integer,
    trans_dt datetime year to second,
    trans_exp_dt datetime year to second,
    rtl_non_disc_ex decimal(12,6) not null ,
    rtl_non_disc_tax decimal(12,6) not null ,
    rtl_disc_ex decimal(12,6),
    rtl_disc_tax decimal(12,6),
    subsdiscid integer,
    rpd_tarclasscode smallint,
    user_name varchar(50,20),
    first_name varchar(50),
    last_name varchar(50,20),
    ebg1 varchar(50),
    ebg2 varchar(50),
    ebg3 varchar(50),
    ref_code varchar(50),
    report_desc varchar(64,30),
    property_id varchar(32,20),
    property_addr varchar(254,64),
    title_ref varchar(32,20),
    ta_desc varchar(64,30),
    qty integer,
    user_reference varchar(254,30),
    fullname varchar(100),
    requestid varchar(50),
    email varchar(100),
    address1 varchar(100),
    address2 varchar(100),
    address3 varchar(100),
    address4 varchar(100),
    cc_surcharge decimal(8,3) 
        default 0.000 not null ,
    cc_percentage decimal(5,2) 
        default 0.00 not null ,
    transaction_id varchar(50,10)
  );

