drop table if exists "informix".tax_set_hdr ;
create table "informix".tax_set_hdr 
  (
    set_id serial not null ,
    taxid integer not null ,
    from datetime year to second not null ,
    to datetime year to second not null ,
    remarks lvarchar(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

