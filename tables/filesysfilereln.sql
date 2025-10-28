drop table if exists "informix".filesysfilereln ;
create table "informix".filesysfilereln 
  (
    filesysrelnref serial not null ,
    filesysfileref integer not null ,
    replacedfileref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

