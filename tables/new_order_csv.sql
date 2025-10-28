drop table if exists "informix".new_order_csv ;
create table "informix".new_order_csv 
  (
    file_sno serial not null ,
    file_name varchar(254,20) not null ,
    file_type varchar(20),
    csv_data lvarchar,
    status_id integer,
    note varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

