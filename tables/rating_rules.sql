drop table if exists "informix".rating_rules ;
create table "informix".rating_rules 
  (
    rule_id smallint not null ,
    rule_narr char(2000) not null ,
    created_by char(10),
    created_dt datetime year to second,
    requested_by char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

