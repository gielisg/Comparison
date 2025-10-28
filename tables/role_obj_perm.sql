drop table if exists "informix".role_obj_perm ;
create table "informix".role_obj_perm 
  (
    role_id integer not null ,
    object_id integer not null ,
    token_id integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

