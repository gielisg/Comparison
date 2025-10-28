drop table if exists "informix".nl_code_cat ;
create table "informix".nl_code_cat 
  (
    cat_code char(1) not null ,
    cat_narr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

