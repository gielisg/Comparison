drop table if exists "informix".pkg_chg_fee_rule ;
create table "informix".pkg_chg_fee_rule 
  (
    rule_id char(2) not null ,
    description varchar(254,20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

