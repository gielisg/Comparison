drop table if exists "informix".disc_exclusion ;
create table "informix".disc_exclusion 
  (
    discid integer not null ,
    discid_excluded integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

