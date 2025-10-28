drop table if exists "informix".usr_roles ;
create table "informix".usr_roles 
  (
    login_code varchar(18) not null ,
    role_id integer not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

