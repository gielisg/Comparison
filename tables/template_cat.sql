drop table if exists "informix".template_cat ;
create table "informix".template_cat 
  (
    cat_code char(2) not null ,
    cat_narr varchar(32,10) not null ,
    disp_order integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

