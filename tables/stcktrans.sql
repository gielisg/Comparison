drop table if exists "informix".stcktrans ;
create table "informix".stcktrans 
  (
    stcktransid serial not null ,
    stckbatchhdrid integer not null ,
    src_stcklocncode char(10),
    des_stcklocncode char(10),
    stck_id integer not null ,
    quantity integer 
        default 1 not null ,
    unit_cost_ex decimal(8,3) 
        default 0.000 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

