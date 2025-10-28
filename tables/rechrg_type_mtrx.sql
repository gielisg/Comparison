drop table if exists "informix".rechrg_type_mtrx ;
create table "informix".rechrg_type_mtrx 
  (
    rechrg_type_id integer not null ,
    oth_rechrg_tp_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    isolation_level char(1) 
        default 'P',
    align_end_date char(1) 
        default 'N' not null ,
    align_start_date char(1) 
        default 'N' not null ,
    max_current_rchg smallint,
    max_future_rchg smallint,
    parent char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (isolation_level IN ('C' ,'I' ,'P' ,'X' )) constraint "informix".cipx,
    
    check (align_end_date IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (align_start_date IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (parent IN ('Y' ,'N' )) constraint "informix".yes_no
  );

