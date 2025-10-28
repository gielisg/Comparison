drop table if exists "informix".pkg_rollup_chrg ;
create table "informix".pkg_rollup_chrg 
  (
    id serial not null ,
    pkg_code integer not null ,
    rollup_id integer not null ,
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

