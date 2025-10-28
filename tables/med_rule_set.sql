drop table if exists "informix".med_rule_set ;
create table "informix".med_rule_set 
  (
    med_rule_set_id serial not null ,
    description varchar(254,20) not null ,
    note text,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

