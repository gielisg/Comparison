drop table if exists "informix".content_txt_img ;
create table "informix".content_txt_img 
  (
    content_txt_id integer not null ,
    content_img_id integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

