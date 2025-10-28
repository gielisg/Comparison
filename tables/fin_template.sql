drop table if exists "informix".fin_template ;
create table "informix".fin_template 
  (
    fin_template_ref serial not null ,
    bus_unit_code char(2) not null ,
    fin_type_code char(2) not null ,
    template_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

