drop table if exists "informix".disccltpsurchrg ;
create table "informix".disccltpsurchrg 
  (
    tar_class_code smallint not null ,
    discsurchrgamnt decimal(15,7) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

