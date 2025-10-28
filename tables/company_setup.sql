drop table if exists "informix".company_setup ;
create table "informix".company_setup 
  (
    company_code char(4) not null ,
    company_narr char(32) not null ,
    acn integer
  );

