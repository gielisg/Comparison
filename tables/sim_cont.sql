drop table if exists "informix".sim_cont ;
create table "informix".sim_cont 
  (
    sim_cont_id serial not null ,
    cont_defined_as char(4),
    contact_code char(10),
    sim_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

