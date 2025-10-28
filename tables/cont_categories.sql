drop table if exists "informix".cont_categories ;
create table "informix".cont_categories 
  (
    category_code char(4) not null ,
    category_narr varchar(32) not null ,
    category_order integer 
        default 3 not null ,
    category_display char(1) 
        default 'Y' not null ,
    category_default char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (category_display IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (category_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

