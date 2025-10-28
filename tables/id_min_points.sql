drop table if exists "informix".id_min_points ;
create table "informix".id_min_points 
  (
    id_min_points_id serial not null ,
    cont_defined_as char(4) not null ,
    min_points smallint not null ,
    cont_type char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (min_points >= 0 ) constraint "informix".greater_eq_0165
  );

