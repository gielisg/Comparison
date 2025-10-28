drop table if exists "informix".fin_hdr_prod ;
create table "informix".fin_hdr_prod 
  (
    fin_prod_ref serial not null ,
    fin_ref integer 
        default 0 not null ,
    prodcode varchar(194) not null ,
    qty decimal(11,3),
    unit_price decimal(16,3),
    unit_tax decimal(16,3),
    serial_number varchar(254),
    note lvarchar(8000),
    description lvarchar(8000),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

