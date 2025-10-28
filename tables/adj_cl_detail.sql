drop table if exists "informix".adj_cl_detail ;
create table "informix".adj_cl_detail 
  (
    adj_item_ref integer not null ,
    cl_ser_num integer not null ,
    fin_ref integer,
    amnt_ex decimal(12,6) 
        default 0.000000 not null ,
    amnt_tax decimal(12,6) 
        default 0.000000 not null 
  );

