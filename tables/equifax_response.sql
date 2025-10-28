drop table if exists "informix".equifax_response ;
create table "informix".equifax_response 
  (
    resp_id serial not null ,
    req_id integer not null ,
    response lvarchar(31000)
  );

