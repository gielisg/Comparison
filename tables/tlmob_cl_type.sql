drop table if exists "informix".tlmob_cl_type ;
create table "informix".tlmob_cl_type 
  (
    tariff_class char(4) not null ,
    tlmob_cl_narr varchar(128)
  );

