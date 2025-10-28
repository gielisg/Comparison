drop table if exists "informix".ntcl_notld_stats ;
create table "informix".ntcl_notld_stats 
  (
    created_dt datetime year to second 
        default current year to second not null ,
    status_code char(3) not null ,
    call_count integer
  );

