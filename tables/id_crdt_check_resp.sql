drop table if exists "informix".id_crdt_check_resp ;
create table "informix".id_crdt_check_resp 
  (
    id serial not null ,
    idcheck_id integer not null ,
    response lvarchar(32000)
  );

