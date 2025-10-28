drop table if exists "informix".ins_reason ;
create table "informix".ins_reason 
  (
    ins_reason_id serial not null ,
    ins_reas_type_code integer not null ,
    ins_reason_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

