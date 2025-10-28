drop table if exists "informix".bincat ;
create table "informix".bincat 
  (
    bincatid serial not null ,
    bingrpid integer not null ,
    bincatnarr varchar(32) not null ,
    object_id integer,
    bus_unit_code char(2),
    image_url varchar(254,50),
    note lvarchar(31000),
    disp_order integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

