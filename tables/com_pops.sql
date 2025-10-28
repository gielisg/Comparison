drop table if exists "informix".com_pops ;
create table "informix".com_pops 
  (
    pop_code char(3) not null ,
    pop_name char(20) not null ,
    cca_region char(7)
  );

