drop table if exists "informix".oper_pass_hist ;
create table "informix".oper_pass_hist 
  (
    login_code varchar(18) not null ,
    passwd_chg_dt datetime year to second 
        default current year to second not null ,
    passwd varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

