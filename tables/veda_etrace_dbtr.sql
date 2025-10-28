drop table if exists "informix".veda_etrace_dbtr ;
create table "informix".veda_etrace_dbtr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_number varchar(20) not null ,
    description varchar(50) not null ,
    state char(3),
    contact_name varchar(25),
    address1 varchar(32),
    address2 varchar(32),
    suburb varchar(32),
    post_code char(5),
    phone_num varchar(20),
    fax_num varchar(20),
    email varchar(50),
    website varchar(50),
    comment varchar(20),
    pricing_plan varchar(32) 
        default 'Unknown' not null ,
    active_user_num integer not null ,
    abn char(11),
    acn char(9),
    account_status varchar(8) not null ,
    effect_date date not null ,
    status_id integer 
        default 0,
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

