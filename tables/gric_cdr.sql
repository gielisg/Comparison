drop table if exists "informix".gric_cdr ;
create table "informix".gric_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    tran_type char(2),
    rate_type char(2),
    gmt_session_stop datetime year to second,
    lcl_session_stop datetime year to second,
    user_id varchar(180,1),
    home_partner varchar(200,1),
    local_partner varchar(200,1),
    unit_type char(1),
    session_durn decimal(12,5),
    region varchar(64,1),
    session_id varchar(30,1),
    nas_address varchar(25,1),
    country_code char(2),
    country_name varchar(64,1),
    state varchar(30,1),
    city varchar(30,1)
  );

