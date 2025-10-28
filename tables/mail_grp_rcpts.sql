drop table if exists "informix".mail_grp_rcpts ;
create table "informix".mail_grp_rcpts 
  (
    grp_id integer not null ,
    logon_code varchar(18,10) not null 
  );

