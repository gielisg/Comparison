drop table if exists "informix".wta ;
create table "informix".wta 
  (
    wta_ref serial not null ,
    debtor_code char(10) not null ,
    file_type_code char(10) not null ,
    layout_version integer not null ,
    max_cl_ser_num integer 
        default 999999999 not null ,
    max_spchgdtl_ref integer 
        default 999999999 not null ,
    sp_pkg_code integer,
    pkg_option integer,
    nt_pkg_code integer,
    superuser char(1),
    email varchar(64),
    chg_debtor_trg char(10),
    wta_wefr datetime year to second 
        default  datetime (2001-01-01 00:00:00) year to second not null ,
    wta_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    daily_run_flg char(1) 
        default 'Y' not null ,
    exp_method varchar(30),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (daily_run_flg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

