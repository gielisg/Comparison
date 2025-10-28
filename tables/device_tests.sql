drop table if exists "informix".device_tests ;
create table "informix".device_tests 
  (
    test_id serial not null ,
    test_narr varchar(254,32) not null ,
    test_type_id integer not null ,
    note varchar(254,32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

