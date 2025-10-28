drop table if exists "informix".address ;
create table "informix".address 
  (
    address_ref serial not null ,
    address1 varchar(100,20),
    address2 varchar(100),
    suburb varchar(64),
    city varchar(64),
    state varchar(64),
    postcode varchar(10,4),
    country_code char(2),
    reference varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

