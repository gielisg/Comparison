drop table if exists "informix".stckbatchhdr ;
create table "informix".stckbatchhdr 
  (
    stckbatchhdrid serial not null ,
    bus_unit_code char(2) not null ,
    batch_type smallint not null ,
    batch_datetime datetime year to second 
        default current year to second not null ,
    batch_status smallint 
        default 1 not null ,
    note lvarchar(1000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (batch_status IN (1 ,2 ,3 ,4 ,5 )) constraint "informix".c1_2_3_4_56,
    
    check (batch_type IN (1 ,2 ,4 ,5 ,6 ,10 ,11 ,12 ,20 ,30 ,31 ,32 ,33 ,40 ,50 ,51 ,52 )) 
              constraint "informix".chk_batch_type5
  );

