drop table if exists "informix".serv_num_class ;
create table "informix".serv_num_class 
  (
    class_id char(1) not null ,
    class_narr varchar(32) not null ,
    is_default char(1) 
        default 'N' not null ,
    note lvarchar(1000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (is_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

