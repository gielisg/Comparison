drop table if exists "informix".invopt_bus ;
create table "informix".invopt_bus 
  (
    invopt_code char(1) not null ,
    bus_unit_code char(2) not null ,
    invopt_disp char(1) 
        default 'Y' not null ,
    invopt_dflt char(1) 
        default 'Y' not null ,
    invopt_editmode char(20),
    invopt_history char(1) 
        default 'Y' not null ,
    invopt_editable char(1) 
        default 'Y' not null ,
    invopt_exclusiveto char(5),
    invopt_mandatory char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (invopt_disp IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (invopt_dflt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (invopt_history IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (invopt_editable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (invopt_mandatory IN ('Y' ,'N' )) constraint "informix".yes_no
  );

