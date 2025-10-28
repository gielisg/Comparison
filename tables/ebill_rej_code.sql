drop table if exists "informix".ebill_rej_code ;
create table "informix".ebill_rej_code 
  (
    reject_code char(2) not null ,
    reject_narr varchar(254) not null 
  );

