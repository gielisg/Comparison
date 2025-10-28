drop table if exists "informix".areacdcltp ;
create table "informix".areacdcltp 
  (
    areacdcltpid serial not null ,
    tar_class_code smallint not null ,
    areacdid integer not null ,
    areacdcltpwefd date 
        default today not null ,
    areacdcltpwetd date 
        default  '01/01/9999' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

