drop table if exists "informix".item ;
create table "informix".item 
  (
    item_ref serial not null ,
    item_narr varchar(254),
    contact_code char(10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

