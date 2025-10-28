drop table if exists "informix".ins_stat_type ;
create table "informix".ins_stat_type 
  (
    ins_stat_type_code serial not null ,
    ins_stat_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

