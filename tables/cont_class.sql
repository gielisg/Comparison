drop table if exists "informix".cont_class ;
create table "informix".cont_class 
  (
    class_id integer not null ,
    class_narr varchar(32) not null ,
    class_order integer 
        default 1 not null ,
    class_display char(1) 
        default 'Y' not null ,
    class_default char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (class_display IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (class_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

