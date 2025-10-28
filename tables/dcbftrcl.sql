drop table if exists "informix".dcbftrcl ;
create table "informix".dcbftrcl 
  (
    discbenfid integer not null ,
    tar_class_code smallint not null ,
    update_tar_class char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

