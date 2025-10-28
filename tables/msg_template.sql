drop table if exists "informix".msg_template ;
create table "informix".msg_template 
  (
    msg_template_id serial not null ,
    name varchar(40,1) not null ,
    file_name varchar(40,1)
  );

