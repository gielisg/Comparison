drop table if exists "informix".cont_roles ;
create table "informix".cont_roles 
  (
    contact_code char(10) not null ,
    role_id integer not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    order smallint 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (from_dt <= to_dt ) constraint "informix".from_to12
  );

