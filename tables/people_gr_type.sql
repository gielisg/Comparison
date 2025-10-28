drop table if exists "informix".people_gr_type ;
create table "informix".people_gr_type 
  (
    group_key char(6) not null ,
    group_narr varchar(128) not null 
  );

