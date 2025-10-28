drop table if exists "informix".unittype ;
create table "informix".unittype 
  (
    unittypeid char(3) not null ,
    list_type char(8) 
        default 'STANDARD' not null ,
    unittypenarr varchar(32) not null 
  );

