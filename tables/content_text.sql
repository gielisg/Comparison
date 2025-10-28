drop table if exists "informix".content_text ;
create table "informix".content_text 
  (
    content_txt_id serial not null ,
    content_txt_lbl varchar(254,30),
    content_txt "informix".clob,
    content_txt_hint varchar(254,30),
    content_txt_link varchar(254,30),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

