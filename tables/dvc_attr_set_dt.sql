drop table if exists "informix".dvc_attr_set_dt ;
create table "informix".dvc_attr_set_dt 
  (
    dvc_att_setdt_id serial not null ,
    set_id integer not null ,
    attribid integer,
    from_dt datetime year to second 
        default current year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

