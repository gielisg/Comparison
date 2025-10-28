drop table if exists "informix".mail_smtp_rcpts ;
create table "informix".mail_smtp_rcpts 
  (
    mail_id integer not null ,
    recipient varchar(100,32) not null ,
    dt_sent datetime year to second
  );

