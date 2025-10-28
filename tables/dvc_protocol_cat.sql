drop table if exists "informix".dvc_protocol_cat ;
create table "informix".dvc_protocol_cat 
  (
    cat_id serial not null ,
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
    
    check (direction IN ('O' ,'I' ,'B' ,'U' )) constraint "informix".oibu17
  );

