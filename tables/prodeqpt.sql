drop table if exists "informix".prodeqpt ;
create table "informix".prodeqpt 
  (
    prodcode varchar(194) not null ,
    equiptype_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

