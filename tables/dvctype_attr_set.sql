drop table if exists "informix".dvctype_attr_set ;
create table "informix".dvctype_attr_set 
  (
    dvtp_attr_set_id serial not null ,
    type_id integer not null ,
    set_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

