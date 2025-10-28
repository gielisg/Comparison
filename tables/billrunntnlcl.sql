drop table if exists "informix".billrunntnlcl ;
create table "informix".billrunntnlcl 
  (
    ntnlclref serial not null ,
    billrunref integer not null ,
    cl_dt_tabcd char(2) not null ,
    nl_code char(3) not null ,
    tar_class_code smallint,
    call_count integer not null ,
    cost_ex decimal(16,6),
    min_cl_start_dt datetime year to second,
    max_cl_start_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

