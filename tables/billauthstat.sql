drop table if exists "informix".billauthstat ;
create table "informix".billauthstat 
  (
    billstepref integer not null ,
    billstepconfcode char(4) not null ,
    login_id varchar(18) not null ,
    authstatdt datetime year to second not null ,
    comment varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

