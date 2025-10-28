drop table if exists "informix".ord_status_code ;
create table "informix".ord_status_code 
  (
    ord_status_code char(2) not null ,
    ord_status_narr varchar(32) not null 
  );

