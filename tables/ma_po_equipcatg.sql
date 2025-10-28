drop table if exists "informix".ma_po_equipcatg ;
create table "informix".ma_po_equipcatg 
  (
    master_policy_id integer not null ,
    equipcatg_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

