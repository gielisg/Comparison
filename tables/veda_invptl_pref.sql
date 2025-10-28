drop table if exists "informix".veda_invptl_pref ;
create table "informix".veda_invptl_pref 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    status_id integer 
        default 0 not null ,
    status_narr varchar(255) 
        default 'Unprocessed' not null ,
    account_no char(10) not null ,
    invoice_pref varchar(32) not null ,
    acct_cont_name varchar(64),
    email_address varchar(64),
    lastprefchgdesc varchar(64) not null ,
    lastprefchgdt datetime year to second not null ,
    lastchguserid varchar(32) not null ,
    user_type char(16) not null ,
    gv_instance char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

