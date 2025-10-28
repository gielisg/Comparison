drop table if exists "informix".srvcattrib ;
create table "informix".srvcattrib 
  (
    sp_cn_ref integer not null ,
    srvcatttypeid integer not null ,
    attribvalue char(18)
  );

