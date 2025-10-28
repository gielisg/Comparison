drop table if exists "informix".accstathist ;
create table "informix".accstathist 
  (
    stat_ref serial not null ,
    debtor_code char(10) not null ,
    stat_wef date not null ,
    stat_wet date not null ,
    acct_stat char(3) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

