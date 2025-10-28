drop table if exists "informix".adj_item_status ;
create table "informix".adj_item_status 
  (
    status_code char(2) not null ,
    status_narr varchar(32) not null 
  );

