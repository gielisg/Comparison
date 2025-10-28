drop table if exists "informix".sfalertexport ;
create table "informix".sfalertexport 
  (
    sp_cn_ref integer not null ,
    country_code char(2) 
        default 'AU' not null ,
    contact_code char(10) not null ,
    phone_num varchar(64) not null ,
    prev_phone_num varchar(64),
    sim_num varchar(20),
    imei varchar(15),
    grdn_first_name varchar(32) not null ,
    grdn_last_name varchar(32) not null ,
    grdn_mob_num varchar(32) not null ,
    prev_grdn_mob_no varchar(32),
    chld_gender varchar(32) not null ,
    chld_first_name varchar(32) not null ,
    chld_last_name varchar(32) not null ,
    chld_street_num varchar(32) not null ,
    chld_street_name varchar(32) not null ,
    chld_suburb varchar(32),
    chld_state varchar(32),
    chld_postcode varchar(32),
    chld_dob varchar(32) not null ,
    file_mode char(3) not null ,
    nt_file_num integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

