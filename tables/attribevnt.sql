drop table if exists "informix".attribevnt ;
create table "informix".attribevnt 
  (
    event_type char(2) not null ,
    event_code char(2) not null ,
    attribid integer not null ,
    eventaction char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (eventaction IN ('N' ,'S' ,'C' )) constraint "informix".event_action
  );

