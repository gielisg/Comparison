drop table if exists "informix".rpd_pid_au_cdr ;
create table "informix".rpd_pid_au_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    debtor_code char(10) not null ,
    sp_cn_ref integer,
    trans_dt datetime year to second not null ,
    tar_class_code integer not null ,
    quantity integer not null ,
    description varchar(64),
    rtl_non_disc_ex decimal(12,6) not null ,
    rtl_non_disc_tax decimal(12,6) not null ,
    instance_desc1 varchar(64),
    instance_desc2 varchar(64),
    instance_desc3 varchar(64),
    username varchar(60),
    firstname varchar(60),
    surname varchar(60),
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
    transaction_id varchar(50,10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

