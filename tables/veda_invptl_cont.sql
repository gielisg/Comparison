drop table if exists "informix".veda_invptl_cont ;
create table "informix".veda_invptl_cont 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    status_id integer 
        default 0 not null ,
    status_narr varchar(255) 
        default 'Unprocessed' not null ,
    user_name varchar(32) not null ,
    user_type char(16) not null ,
    domain varchar(10) not null ,
    restriction_type varchar(16) not null ,
    first_name varchar(64) not null ,
    last_name varchar(64) not null ,
    email_address varchar(64),
    phone_no varchar(32),
    mobile_no varchar(32),
    cont_roles varchar(64) not null ,
    last_login_dt datetime year to second,
    inv_portal_stat char(16) not null ,
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

