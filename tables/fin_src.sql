drop table if exists "informix".fin_src ;
create table "informix".fin_src 
  (
    fin_src_code char(2) not null ,
    fin_src_narr varchar(32) not null 
  );

