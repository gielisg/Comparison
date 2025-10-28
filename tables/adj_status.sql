drop table if exists "informix".adj_status ;
create table "informix".adj_status 
  (
    adj_stat_code char(2) not null ,
    adj_stat_narr varchar(32,1) not null 
  );

