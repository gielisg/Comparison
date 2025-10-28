drop table if exists "informix".device_test_type ;
create table "informix".device_test_type 
  (
    test_type_id serial not null ,
    test_type_narr varchar(254,32) not null ,
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

