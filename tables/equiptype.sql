drop table if exists "informix".equiptype ;
create table "informix".equiptype 
  (
    equiptype_id serial not null ,
    equipcatg_id integer not null ,
    equiptype_brand varchar(32) not null ,
    equiptype_model varchar(32) not null ,
    equip_display char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (equip_display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

