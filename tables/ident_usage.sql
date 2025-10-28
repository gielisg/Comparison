drop table if exists "informix".ident_usage ;
create table "informix".ident_usage 
  (
    ntwkidentid integer not null ,
    ident_start_dt datetime year to second not null ,
    ident_end_dt datetime year to second not null ,
    sp_cn_ref integer not null ,
    ident_status char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

