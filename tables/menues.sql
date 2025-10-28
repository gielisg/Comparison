drop table if exists "informix".menues ;
create table "informix".menues 
  (
    menu_id integer not null ,
    object_id integer not null ,
    menu_narr varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

