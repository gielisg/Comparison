drop table if exists "informix".evol_prod_map ;
create table "informix".evol_prod_map 
  (
    map_ref serial not null ,
    pkg_code integer,
    pkg_chg_num integer,
    tar_class_code smallint,
    product_code varchar(32) not null ,
    map_wefr datetime year to second 
        default current year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null 
  );

