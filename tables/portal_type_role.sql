drop table if exists "informix".portal_type_role ;
create table "informix".portal_type_role 
  (
    portal_type_id integer not null ,
    role_id integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

