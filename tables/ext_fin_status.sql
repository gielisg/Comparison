drop table if exists "informix".ext_fin_status ;
create table "informix".ext_fin_status 
  (
    status_id serial not null ,
    status_narr varchar(254,32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

