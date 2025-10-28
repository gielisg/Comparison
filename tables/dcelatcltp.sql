drop table if exists "informix".dcelatcltp ;
create table "informix".dcelatcltp 
  (
    disceligid integer not null ,
    tar_class_code smallint not null ,
    dcelatcltpperc decimal(6,3) 
        default 100.000 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

