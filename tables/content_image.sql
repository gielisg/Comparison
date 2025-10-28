drop table if exists "informix".content_image ;
create table "informix".content_image 
  (
    content_img_id serial not null ,
    content_img_lbl varchar(254,30),
    content_img "informix".blob,
    content_img_hint varchar(254,30),
    content_img_link varchar(254,30),
    embedded_in_text char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (embedded_in_text IN ('Y' ,'N' )) constraint "informix".yes_no
  );

