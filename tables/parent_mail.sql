drop table if exists "informix".parent_mail ;
create table "informix".parent_mail 
  (
    mail_id integer not null ,
    parent_mail_id integer not null 
  );

