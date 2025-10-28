drop table if exists "informix".mail_grps ;
create table "informix".mail_grps 
  (
    grp_id integer not null ,
    grp_narr char(32) not null 
  );

