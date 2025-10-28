drop table if exists "informix".equipment ;
create table "informix".equipment 
  (
    equipment_id serial not null ,
    equiptype_id integer not null ,
    equipment_ser_no varchar(32),
    equipment_pur_dt datetime year to second,
    equipment_narr varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

