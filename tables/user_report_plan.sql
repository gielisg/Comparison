drop table if exists "informix".user_report_plan ;
create table "informix".user_report_plan 
  (
    report_plan_id integer not null ,
    report_plan_narr char(32) not null 
  );

