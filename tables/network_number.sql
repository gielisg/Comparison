drop table if exists "informix".network_number ;
create table "informix".network_number 
  (
    service_number varchar(20) not null ,
    line_movement char(1),
    line_mvmnt_time datetime year to second,
    line_type char(1),
    current_operator char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

