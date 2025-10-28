drop table if exists "informix".message_orders ;
create table "informix".message_orders 
  (
    msgid integer not null ,
    order_id integer not null 
  );

