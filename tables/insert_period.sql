drop table if exists "informix".insert_period ;
create table "informix".insert_period 
  (
    insert_per_ref serial not null ,
    insert_type_code char(2) not null ,
    bill_period integer not null ,
    ins_number smallint not null ,
    cycle_code char(2) 
        default 'CM' not null ,
    
    check ((ins_number >= 1 ) AND (ins_number <= 6 ) ) constraint "informix".ins_number20
  );

