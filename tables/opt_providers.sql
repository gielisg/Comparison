drop table if exists "informix".opt_providers ;
create table "informix".opt_providers 
  (
    prov_id integer not null ,
    prov_narr varchar(64,32)
  );

