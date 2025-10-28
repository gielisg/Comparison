drop table if exists "informix".med_rule ;
create table "informix".med_rule 
  (
    med_rule_id serial not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
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

