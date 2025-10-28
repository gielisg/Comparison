drop table if exists "informix".slot_rule_pred ;
create table "informix".slot_rule_pred 
  (
    slot_rul_pred_id serial not null ,
    slot_rule_id integer not null ,
    rule_pred_code varchar(10,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

