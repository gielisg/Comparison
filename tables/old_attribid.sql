drop table if exists "informix".old_attribid ;
create table "informix".old_attribid 
  (
    attribref integer,
    old_attribid integer,
    new_attribid integer
  );

