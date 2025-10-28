drop table if exists "informix".veda_nz_debtors ;
create table "informix".veda_nz_debtors 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(1) 
        default 'M' not null ,
    client_id char(6) not null ,
    client_name varchar(35) not null ,
    address1 varchar(20),
    address2 varchar(20),
    address3 varchar(20),
    address4 varchar(20),
    post_code char(5),
    phone_num varchar(10),
    contact_name varchar(25),
    industry_type char(2),
    load_date date not null ,
    branch char(2),
    group_account char(6),
    srvc_rep_code char(3),
    status_id integer 
        default 0,
    status_narr varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (rec_type IN ('M' ,'D' )) constraint "informix".rec_type
  );

