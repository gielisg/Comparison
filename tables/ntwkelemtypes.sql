drop table if exists "informix".ntwkelemtypes ;
create table "informix".ntwkelemtypes 
  (
    element_type_ref serial not null ,
    network_id char(2) not null ,
    element_narr varchar(254,32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

