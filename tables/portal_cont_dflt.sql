drop table if exists "informix".portal_cont_dflt ;
create table "informix".portal_cont_dflt 
  (
    contact_code char(10) not null ,
    portal_type_id integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

