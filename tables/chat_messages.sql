drop table if exists "informix".chat_messages ;
create table "informix".chat_messages 
  (
    id serial not null ,
    chat_id integer not null ,
    direction varchar(20) not null ,
    body lvarchar(10000) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    
    check (direction IN ('ToContact' ,'FromContact' )) constraint "informix".chatmsg_direction
  );

