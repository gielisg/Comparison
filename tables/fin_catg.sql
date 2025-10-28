drop table if exists "informix".fin_catg ;
create table "informix".fin_catg 
  (
    fin_catg_code char(2) not null ,
    fin_type_code char(2) not null ,
    fin_catg_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

