drop table if exists "informix".dealcatg ;
create table "informix".dealcatg 
  (
    dealcatgid serial not null ,
    dealcatgnarr varchar(32)
  );

