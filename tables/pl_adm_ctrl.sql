drop table if exists "informix".pl_adm_ctrl ;
create table "informix".pl_adm_ctrl 
  (
    pl_id integer not null ,
    start_dt datetime year to second,
    completed char(1) 
        default 'N' not null ,
    last_alive datetime year to second,
    
    check (completed IN ('Y' ,'N' )) constraint "informix".yes_no
  );

