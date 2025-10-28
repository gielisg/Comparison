drop table if exists "informix".wtf ;
create table "informix".wtf 
  (
    wtf_ref serial not null ,
    wta_ref integer not null ,
    nt_file_num integer not null ,
    output_filename varchar(64),
    status integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

