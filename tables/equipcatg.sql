drop table if exists "informix".equipcatg ;
create table "informix".equipcatg 
  (
    equipcatg_id serial not null ,
    equipcatg_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

