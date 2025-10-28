drop table if exists "informix".med_val_rule_ex ;
create table "informix".med_val_rule_ex 
  (
    med_vrule_exc_id integer not null ,
    strtypecd char(6),
    srvctypecode char(4),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

