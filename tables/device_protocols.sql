drop table if exists "informix".device_protocols ;
create table "informix".device_protocols 
  (
    protocol_id serial not null ,
    cat_id integer not null ,
    qos_id integer,
    msg_broker_id integer,
    name varchar(254) not null ,
    direction char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (direction IN ('O' ,'I' ,'B' ,'U' )) constraint "informix".oibu18
  );

