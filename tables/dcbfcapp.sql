drop table if exists "informix".dcbfcapp ;
create table "informix".dcbfcapp 
  (
    discbenfid integer not null ,
    dcbfcappdurn integer,
    dcbfcappamnt decimal(12,6) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

