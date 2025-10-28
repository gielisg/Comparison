drop table if exists "informix".rollup_chrg_usg ;
create table "informix".rollup_chrg_usg 
  (
    id serial not null ,
    calculation_id integer not null ,
    source_tcc smallint not null ,
    target_tcc smallint not null ,
    wefr datetime year to second 
        default current year to second not null ,
    weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

