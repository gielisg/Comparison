drop table if exists "informix".sla ;
create table "informix".sla 
  (
    sla_id char(10) not null ,
    sla_narr varchar(254,32) not null 
  );

