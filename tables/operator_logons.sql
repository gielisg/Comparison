drop table if exists "informix".operator_logons ;
create table "informix".operator_logons 
  (
    login_code varchar(18) not null ,
    login_dt datetime year to second 
        default current year to second not null ,
    login_result integer not null ,
    logout_dt datetime year to second,
    ip_address char(15),
    machine_name varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

