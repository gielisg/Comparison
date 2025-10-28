drop table if exists "informix".autochgeliglpay ;
create table "informix".autochgeliglpay 
  (
    autochgeligid integer not null ,
    daysoverdue integer not null ,
    minbalance decimal(10,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

