drop table if exists "informix".taxxmpt ;
create table "informix".taxxmpt 
  (
    taxxmptid serial not null ,
    taxapplid integer not null ,
    tar_class_code smallint,
    chg_code char(4),
    debtor_code char(10),
    taxxmptwefr datetime year to second not null ,
    taxxmptweto datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

