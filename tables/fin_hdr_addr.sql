drop table if exists "informix".fin_hdr_addr ;
create table "informix".fin_hdr_addr 
  (
    fin_addr_ref serial not null ,
    fin_ref integer 
        default 0 not null ,
    address_ref integer,
    type char(20) not null ,
    addressee varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

