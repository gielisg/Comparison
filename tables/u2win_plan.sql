drop table if exists "informix".u2win_plan ;
create table "informix".u2win_plan 
  (
    plan_id integer not null ,
    plan_desc varchar(130) not null ,
    allow_per_mon integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

