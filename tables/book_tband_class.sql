drop table if exists "informix".book_tband_class ;
create table "informix".book_tband_class 
  (
    time_band_class serial not null ,
    tband_class_narr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

