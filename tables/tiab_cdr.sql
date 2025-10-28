drop table if exists "informix".tiab_cdr ;
create table "informix".tiab_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    customer_number varchar(20),
    service_number varchar(100),
    date_time varchar(20),
    destination varchar(100),
    duration_unit varchar(20),
    charge_type varchar(50),
    group_cost decimal(10,2),
    retail_cost decimal(10,2)
  );

