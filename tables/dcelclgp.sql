drop table if exists "informix".dcelclgp ;
create table "informix".dcelclgp 
  (
    disceligid integer not null ,
    sp_cl_group_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

