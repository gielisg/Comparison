drop table if exists "informix".dcelcntr ;
create table "informix".dcelcntr 
  (
    disceligid integer not null ,
    contract_code char(4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

