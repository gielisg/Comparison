drop table if exists "informix".onetime_password ;
create table "informix".onetime_password 
  (
    otp_ref serial not null ,
    contact_code char(10) not null ,
    onetime_pwd varchar(64,8) not null ,
    expiry_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

