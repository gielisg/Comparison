drop table if exists "informix".med_data_type ;
create table "informix".med_data_type 
  (
    med_type_id serial not null ,
    med_type_name varchar(254,20),
    unit char(1) not null ,
    billable_usage char(1) 
        default 'Y' not null ,
    alert char(1) 
        default 'N' not null ,
    editable char(1) 
        default 'Y' not null ,
    parent_reconcile char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (billable_usage IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (alert IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (editable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (parent_reconcile IN ('Y' ,'N' )) constraint "informix".yes_no
  );

