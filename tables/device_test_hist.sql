drop table if exists "informix".device_test_hist ;
create table "informix".device_test_hist 
  (
    dev_test_histid integer not null ,
    device_id integer not null ,
    test_id integer not null ,
    test_dt datetime year to second not null ,
    test_status_id integer not null ,
    condition_id integer not null ,
    tester char(10) not null ,
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

