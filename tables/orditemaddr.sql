drop table if exists "informix".orditemaddr ;
create table "informix".orditemaddr 
  (
    ordritemid integer not null ,
    addr_type_code char(2) not null ,
    address_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

