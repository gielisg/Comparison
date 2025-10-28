drop table if exists "informix".ord_addr ;
create table "informix".ord_addr 
  (
    ord_id integer not null ,
    address_ref integer not null ,
    addr_type_code char(2) not null 
  );

