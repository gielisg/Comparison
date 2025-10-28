drop table if exists "informix".ssswhls_cl_type ;
create table "informix".ssswhls_cl_type 
  (
    tariff_code char(10) not null ,
    ssswhls_cl_narr varchar(128,1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

