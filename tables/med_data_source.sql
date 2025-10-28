drop table if exists "informix".med_data_source ;
create table "informix".med_data_source 
  (
    med_datasrce_id serial not null ,
    file_type_code char(10) not null ,
    description varchar(254,20) not null ,
    note text,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

