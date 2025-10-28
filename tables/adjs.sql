drop table if exists "informix".adjs ;
create table "informix".adjs 
  (
    adjsid serial not null ,
    event_ref integer not null ,
    adjsnarr varchar(32),
    adjstypecd char(1) 
        default 'A' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

