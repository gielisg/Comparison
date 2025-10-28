drop table if exists "informix".tlgsm_cl_type ;
create table "informix".tlgsm_cl_type 
  (
    tariff_class char(4) not null ,
    tlmob_cl_narr varchar(128),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

