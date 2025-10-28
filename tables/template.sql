drop table if exists "informix".template ;
create table "informix".template 
  (
    template_id serial not null ,
    template_narr varchar(32,10) not null ,
    cat_code char(2) not null ,
    subject varchar(255),
    body lvarchar(32000),
    contact char(1) 
        default 'N' not null ,
    service char(1) 
        default 'N' not null ,
    email char(1) 
        default 'N' not null ,
    print char(1) 
        default 'N' not null ,
    disp_order integer,
    location varchar(255),
    sms char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sms IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (contact IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (service IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (email IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (print IN ('Y' ,'N' )) constraint "informix".yes_no
  );

