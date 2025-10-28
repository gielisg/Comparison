drop table if exists "informix".cl_nt_cost ;
create table "informix".cl_nt_cost 
  (
    cl_ser_num integer not null ,
    nt_cost decimal(18,10) not null ,
    nt_cost_ex decimal(18,10) 
        default 0.0000000000 not null ,
    nt_cost_tax decimal(18,10) 
        default 0.0000000000 not null 
  );

