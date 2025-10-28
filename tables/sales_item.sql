drop table if exists "informix".sales_item ;
create table "informix".sales_item 
  (
    sales_item_id varchar(10) not null ,
    item_desc varchar(130) not null ,
    rate_on varchar(30) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

