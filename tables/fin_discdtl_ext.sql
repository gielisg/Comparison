drop table if exists "informix".fin_discdtl_ext ;
create table "informix".fin_discdtl_ext 
  (
    fin_ref integer not null ,
    fin_dd_attrib varchar(32) not null ,
    fin_dd_value varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

