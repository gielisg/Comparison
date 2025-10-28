drop table if exists "informix".portal_type_mode ;
create table "informix".portal_type_mode 
  (
    portal_type_id integer not null ,
    login_mode smallint not null ,
    use_order smallint 
        default 1 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (use_order IN (1 ,2 ,3 ,4 ,5 ,6 ,7 )) constraint "informix".use_order3
  );

