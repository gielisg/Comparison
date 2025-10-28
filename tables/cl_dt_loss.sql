drop table if exists "informix".cl_dt_loss ;
create table "informix".cl_dt_loss 
  (
    cl_ser_num integer not null ,
    created_dt datetime year to second 
        default current year to second not null 
  );

