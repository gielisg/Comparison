drop table if exists "informix".cont_sub_type ;
create table "informix".cont_sub_type 
  (
    type char(1) not null ,
    sub_type_code char(2) not null ,
    sub_type_narr char(32) not null ,
    sub_type_display char(1) 
        default 'Y' not null ,
    disp_order integer 
        default 3 not null ,
    sub_type_default char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('P' ,'B' )) constraint "informix".contact_type207,
    
    check (sub_type_display IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (sub_type_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

