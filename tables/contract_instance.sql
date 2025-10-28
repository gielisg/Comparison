drop table if exists "informix".contract_instance ;
create table "informix".contract_instance 
  (
    contr_instance_id serial not null ,
    contract_narr varchar(254) not null ,
    contract_code varchar(4) not null ,
    note lvarchar(10000),
    term smallint not null ,
    term_units char(1) not null ,
    contr_pen_code char(2) not null ,
    termination_notice smallint 
        default 0 not null ,
    termination_units char(1) not null ,
    termination_fee decimal(18,10) 
        default 0.0000000000 not null ,
    cooloff_days smallint not null ,
    salesperson char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (term_units IN ('D' ,'M' ,'Y' )) constraint "informix".day_month_year108,
    
    check (termination_units IN ('D' ,'M' ,'Y' )) constraint "informix".day_month_year109
  );

