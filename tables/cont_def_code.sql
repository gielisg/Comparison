drop table if exists "informix".cont_def_code ;
create table "informix".cont_def_code 
  (
    cont_defined_as char(4) not null ,
    cont_narr char(30) not null ,
    cont_order integer 
        default 1 not null ,
    cont_visible char(1) 
        default 'Y' not null ,
    cont_min_occur integer 
        default 1 not null ,
    cont_max_occur integer 
        default 1 not null ,
    cont_self_refer char(1) 
        default 'N' not null ,
    contact_related char(1) 
        default 'Y' not null ,
    service_related char(1) 
        default 'N' not null ,
    note lvarchar(2000),
    object_id integer,
    device_related char(1) 
        default 'N' not null ,
    site_related char(1) 
        default 'N' not null ,
    system_record char(1) 
        default 'Y' not null ,
    role_id integer,
    parent_type char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (contact_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (service_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (device_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (system_record IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (site_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (parent_type IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cont_visible IN ('Y' ,'N' ,'E' )) constraint "informix".yes_no
  );

