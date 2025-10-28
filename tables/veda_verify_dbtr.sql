drop table if exists "informix".veda_verify_dbtr ;
create table "informix".veda_verify_dbtr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    business_unit varchar(16) not null ,
    account varchar(10),
    description varchar(50),
    state char(3),
    contact_name varchar(60),
    address1 varchar(60),
    address2 varchar(60),
    suburb varchar(20),
    city varchar(20),
    post_code char(5),
    country varchar(20) not null ,
    phone_num varchar(20),
    fax_num varchar(20),
    email varchar(60),
    website varchar(60),
    comment varchar(20),
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
        default user not null 
  );

