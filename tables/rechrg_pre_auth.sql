drop table if exists "informix".rechrg_pre_auth ;
create table "informix".rechrg_pre_auth 
  (
    pre_auth_id serial not null ,
    rechrg_id integer not null ,
    element_id integer,
    auth_num varchar(30),
    auth_dt datetime year to second not null ,
    expiry_dt datetime year to second not null ,
    auth_status integer not null ,
    status_change_dt datetime year to second not null ,
    auth_value decimal(16,3) not null ,
    open_value decimal(16,3) not null ,
    requesting_user varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

