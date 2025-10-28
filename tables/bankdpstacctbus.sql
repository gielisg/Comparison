drop table if exists "informix".bankdpstacctbus ;
create table "informix".bankdpstacctbus 
  (
    bank_acct_id integer not null ,
    bus_unit_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

