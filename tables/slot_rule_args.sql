drop table if exists "informix".slot_rule_args ;
create table "informix".slot_rule_args 
  (
    rule_param_code varchar(10,4) not null ,
    slot_rul_pred_id integer not null ,
    value varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

