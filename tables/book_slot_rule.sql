drop table if exists "informix".book_slot_rule ;
create table "informix".book_slot_rule 
  (
    booking_id integer not null ,
    slot_rule_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

