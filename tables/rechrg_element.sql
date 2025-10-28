drop table if exists "informix".rechrg_element ;
create table "informix".rechrg_element 
  (
    element_id serial not null ,
    event_type char(2),
    event_code char(2),
    element_narr varchar(254,32) not null ,
    element_type char(1),
    value_type char(1) 
        default 'V',
    external_id varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (element_type IN ('C' ,'D' ,'E' ,'M' ,'O' ,'T' ,'P' )) constraint "informix".element_type24,
    
    check (value_type IN ('C' ,'V' ,'T' )) constraint "informix".value_type2
  );

