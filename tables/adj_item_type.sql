drop table if exists "informix".adj_item_type ;
create table "informix".adj_item_type 
  (
    type_code char(2) not null ,
    type_narr varchar(32) not null 
  );

