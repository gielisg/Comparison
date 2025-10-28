drop table if exists "informix".role_fin_rules ;
create table "informix".role_fin_rules 
  (
    role_id integer not null ,
    fin_type_code char(2) not null ,
    role_warnmin decimal(8,2) 
        default 0.00 not null ,
    role_warnmax decimal(8,2) 
        default 1000.00 not null ,
    role_err_min decimal(8,2) 
        default -1000.00 not null ,
    role_err_max decimal(8,2) 
        default 10000.00 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

