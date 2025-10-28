drop table if exists "informix".chghier ;
create table "informix".chghier 
  (
    chghierref serial not null ,
    chghiernarr varchar(128) not null ,
    chghiertypecode char(4) not null ,
    chghierprntref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

