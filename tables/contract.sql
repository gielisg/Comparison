drop table if exists "informix".contract ;
create table "informix".contract 
  (
    contract_code char(4) not null ,
    cont_narr char(32) not null ,
    term smallint not null ,
    term_units char(1) not null ,
    contr_pen_code char(2) 
        default 'LR' not null ,
    contr_pen_perc integer 
        default 100 not null ,
    disc smallint 
        default 0 not null ,
    disc_units char(1) not null ,
    disc_fee decimal(18,10) 
        default 0.0000000000 not null ,
    cooloff_days smallint not null ,
    contact_related char(1) 
        default 'N' not null ,
    service_related char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (term_units IN ('D' ,'M' ,'Y' )) constraint "informix".day_month_year49,
    
    check (disc_units IN ('D' ,'M' ,'Y' )) constraint "informix".day_month_year50,
    
    check (contact_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (service_related IN ('Y' ,'N' )) constraint "informix".yes_no
  );

