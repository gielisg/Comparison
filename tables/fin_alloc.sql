drop table if exists "informix".fin_alloc ;
create table "informix".fin_alloc 
  (
    fin_ref integer not null ,
    oth_fin_ref integer not null ,
    alloc_wefr datetime year to second 
        default current year to second not null ,
    alloc_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    alloc_stat_code char(2) 
        default 'AC' not null ,
    alloc_amount decimal(10,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (alloc_stat_code IN ('AC' ,'VD' )) constraint "informix".allocation_status
  );

