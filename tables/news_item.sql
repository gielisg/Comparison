drop table if exists "informix".news_item ;
create table "informix".news_item 
  (
    news_item_id serial not null ,
    news_item_txt "informix".clob,
    expiry_date date,
    display_order integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

