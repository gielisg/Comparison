drop table if exists "informix".ecrm_events ;
create table "informix".ecrm_events 
  (
    event_id serial not null ,
    event_type integer,
    event_dir char(1) not null ,
    event_dt datetime year to second not null ,
    address varchar(100,32) not null ,
    subject varchar(254,20) not null ,
    created_by varchar(18,10) 
        default user not null ,
    opened_by varchar(18,10),
    opened_dt datetime year to second,
    priority smallint 
        default 2,
    internal char(1) 
        default 'N' not null ,
    pro_forma_name varchar(254,32),
    
    check (priority IN (1 ,2 ,3 )) constraint "informix".chk_1_2_371,
    
    check (internal IN ('Y' ,'N' )) constraint "informix".yes_no
  );

