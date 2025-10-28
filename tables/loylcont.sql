drop table if exists "informix".loylcont ;
create table "informix".loylcont 
  (
    loylcontid serial not null ,
    loylplanid integer not null ,
    debtor_code char(10) not null ,
    loylcontwefr datetime year to second not null ,
    loylcontweto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

