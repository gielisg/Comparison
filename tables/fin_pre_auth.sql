drop table if exists "informix".fin_pre_auth ;
create table "informix".fin_pre_auth 
  (
    pre_auth_ref serial not null ,
    contact_code char(10) not null ,
    auth_num varchar(30),
    auth_dt datetime year to second not null ,
    expiry_dt datetime year to second not null ,
    auth_status integer not null ,
    status_change_dt datetime year to second not null ,
    auth_amount decimal(16,3) not null ,
    open_amount decimal(16,3) not null ,
    requesting_user varchar(254,20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (auth_status IN (0 ,1 ,2 ,10 )) constraint "informix".auth_status3
  );

