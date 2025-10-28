drop table if exists "informix".book_slot_type ;
create table "informix".book_slot_type 
  (
    slot_type_id serial not null ,
    slot_type_narr varchar(255) not null ,
    slot_rule_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

