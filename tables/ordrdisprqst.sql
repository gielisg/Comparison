drop table if exists "informix".ordrdisprqst ;
create table "informix".ordrdisprqst 
  (
    ordrdisprqstid serial not null ,
    dispcompcode char(4) not null ,
    ordrdisprqstdttm datetime year to second not null ,
    nt_file_num integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

