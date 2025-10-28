drop table if exists "informix".equip_policy ;
create table "informix".equip_policy 
  (
    sp_cn_ref integer not null ,
    equipment_id integer not null ,
    policy_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

