drop table if exists "informix".serv_num_range ;
create table "informix".serv_num_range 
  (
    range_id serial not null ,
    serv_num_type smallint 
        default 1 not null ,
    start_serv_num varchar(120),
    end_serv_num varchar(120),
    ignore_chkdigit char(1) 
        default 'Y' not null ,
    chkdigt_algorithm char(10),
    network_id char(2),
    note lvarchar(1000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (serv_num_type IN (1 ,2 )) constraint "informix".c1_239,
    
    check (ignore_chkdigit IN ('Y' ,'N' )) constraint "informix".yes_no
  );

