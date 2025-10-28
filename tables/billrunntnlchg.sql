drop table if exists "informix".billrunntnlchg ;
create table "informix".billrunntnlchg 
  (
    ntnlchgref serial not null ,
    billrunref integer not null ,
    ch_dt_tabcd char(4) not null ,
    status_id integer not null ,
    chg_code char(4),
    chg_count integer not null ,
    cost_amount decimal(16,6),
    min_chg_start_dt datetime year to second,
    max_chg_start_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

