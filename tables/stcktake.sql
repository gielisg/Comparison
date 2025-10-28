drop table if exists "informix".stcktake ;
create table "informix".stcktake 
  (
    stcktakeid serial not null ,
    stcktake_status smallint not null ,
    stcktake_dt datetime year to second,
    note lvarchar(1000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stcktake_status IN (1 ,2 ,3 ,4 ,5 ,10 )) constraint "informix".chk_stcktake
  );

