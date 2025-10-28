drop table if exists "informix".industries ;
create table "informix".industries 
  (
    industry_code char(4) not null ,
    industry_narr varchar(80) not null ,
    other_info varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

