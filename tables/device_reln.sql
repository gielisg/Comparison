drop table if exists "informix".device_reln ;
create table "informix".device_reln 
  (
    reln_id serial not null ,
    device_id1 integer not null ,
    device_id2 integer not null ,
    reln_type_id integer,
    reln_wef_date date not null ,
    reln_wet_date date 
        default  '01/01/9999' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

