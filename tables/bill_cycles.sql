drop table if exists "informix".bill_cycles ;
create table "informix".bill_cycles 
  (
    cycle_code char(2) not null ,
    cycle_narr varchar(32),
    cycle_dft char(1),
    billrunconfcode char(4),
    cycle_dis_ordr integer,
    cycle_day_of_mth integer 
        default 1 not null ,
    cycle_interval integer 
        default 1 not null ,
    cycle_units char(1) 
        default 'M' not null ,
    display char(1) 
        default 'Y' not null ,
    cycle_source char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cycle_units = 'M' ) constraint "informix".cycle_unit3,
    
    check ((cycle_day_of_mth >= 1 ) AND (cycle_day_of_mth <= 28 ) ) constraint "informix".day_of_any_month,
    
    check (display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

