drop table if exists "informix".timesheet_entry ;
create table "informix".timesheet_entry 
  (
    entry_id serial not null ,
    contact_code char(10),
    assoc_cont_code char(10),
    created_dt datetime year to second 
        default current year to second not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null ,
    activity_id integer,
    task_id integer,
    chargeable char(1) 
        default 'N' not null ,
    note varchar(254),
    utilization smallint 
        default 100 not null ,
    perc_complete smallint 
        default 100 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((utilization >= 0 ) AND (utilization <= 100 ) ) constraint "informix".gte_0_lte_100_7,
    
    check ((perc_complete >= 0 ) AND (perc_complete <= 100 ) ) constraint "informix".gte_0_lte_100_8,
    
    check (chargeable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

