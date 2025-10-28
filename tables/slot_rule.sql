drop table if exists "informix".slot_rule ;
create table "informix".slot_rule 
  (
    slot_rule_id serial not null ,
    start_date datetime year to second not null ,
    end_date datetime year to second not null ,
    amount decimal(16) 
        default 0.0000000000000000 not null ,
    multiply decimal(16) 
        default 1.0000000000000000,
    reject char(1) 
        default 'N' not null ,
    priority integer 
        default 100 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

