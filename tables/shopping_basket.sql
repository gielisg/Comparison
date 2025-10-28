drop table if exists "informix".shopping_basket ;
create table "informix".shopping_basket 
  (
    id serial not null ,
    contact_code char(10),
    bus_unit_code char(2),
    status char(30) 
        default 'Partially Entered' not null ,
    dt datetime year to second 
        default current year to second not null ,
    details lvarchar(32000)
  );

