drop table if exists "informix".rule_pred ;
create table "informix".rule_pred 
  (
    rule_pred_code varchar(10,2) not null ,
    rule_pred_narr varchar(255) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

