drop table if exists "informix".image_part ;
create table "informix".image_part 
  (
    id serial not null ,
    imageid integer not null ,
    seq_no smallint not null ,
    image lvarchar(31000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

