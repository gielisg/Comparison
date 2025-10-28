drop table if exists "informix".chghierchgs ;
create table "informix".chghierchgs 
  (
    chghierchgsref serial not null ,
    chghierref integer not null ,
    chg_code char(4),
    tar_class_code smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

