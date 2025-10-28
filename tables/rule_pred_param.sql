drop table if exists "informix".rule_pred_param ;
create table "informix".rule_pred_param 
  (
    rule_param_code varchar(10,4) not null ,
    rule_pred_code varchar(10,2),
    param_narr varchar(255) not null ,
    strtypecd char(6),
    srvctypecode char(4),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

