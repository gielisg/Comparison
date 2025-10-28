drop table if exists "informix".porttechnologytype ;
create table "informix".porttechnologytype 
  (
    port_tech_type_id serial not null ,
    name varchar(254),
    srvctypecode char(4),
    type varchar(10) 
        default 'PortIn' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('PortIn' ,'PortOut' )) constraint "informix".porttech_type
  );

