drop table if exists "informix".cont_relation_his ;
create table "informix".cont_relation_his 
  (
    id serial not null ,
    contact_code char(10),
    relation_type_code char(2) not null ,
    related_contact char(10) not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

