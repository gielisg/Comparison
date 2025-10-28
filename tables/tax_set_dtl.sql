drop table if exists "informix".tax_set_dtl ;
create table "informix".tax_set_dtl 
  (
    detail_id serial not null ,
    set_id integer not null ,
    type varchar(20) not null ,
    taxid integer,
    remarks lvarchar(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('Basic' ,'Intrastate' ,'Local' ,'Interstate' ,'International' )) 
              constraint "informix".tax_set_type
  );

