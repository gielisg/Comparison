drop table if exists "informix".rechrg_cat ;
create table "informix".rechrg_cat 
  (
    rechrg_cat_id serial not null ,
    rechrg_cat_narr varchar(254,30) not null ,
    display_order integer 
        default 1 not null ,
    rechrg_cat_type char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

