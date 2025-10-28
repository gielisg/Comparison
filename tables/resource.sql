drop table if exists "informix".resource ;
create table "informix".resource 
  (
    resource_id serial not null ,
    type varchar(20) not null ,
    name varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (type IN ('API' ,'Application' ,'Feature' ,'Data' )) constraint "informix".type_resource
  );

