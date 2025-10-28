drop table if exists "informix".paycollauthuser ;
create table "informix".paycollauthuser 
  (
    login_code varchar(18) not null ,
    paycollconfcode char(4) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

