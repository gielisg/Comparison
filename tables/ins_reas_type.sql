drop table if exists "informix".ins_reas_type ;
create table "informix".ins_reas_type 
  (
    ins_reas_type_code serial not null ,
    ins_reas_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

