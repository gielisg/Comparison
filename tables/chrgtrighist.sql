drop table if exists "informix".chrgtrighist ;
create table "informix".chrgtrighist 
  (
    triggerd_chg_ref integer not null ,
    source_chg_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

