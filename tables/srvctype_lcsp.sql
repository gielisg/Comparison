drop table if exists "informix".srvctype_lcsp ;
create table "informix".srvctype_lcsp 
  (
    lcsp_id integer not null ,
    srvctypecode char(4) not null 
  );

