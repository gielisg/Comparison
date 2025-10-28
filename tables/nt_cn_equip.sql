drop table if exists "informix".nt_cn_equip ;
create table "informix".nt_cn_equip 
  (
    equipment_id integer not null ,
    nt_cn_ref integer not null 
  );

