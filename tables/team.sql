drop table if exists "informix".team ;
create table "informix".team 
  (
    team_id serial not null ,
    team_type char(20) 
        default 'GENERAL' not null ,
    team_name varchar(64) not null ,
    dept_code char(3),
    note lvarchar(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (team_type IN ('CHECK' ,'GENERAL' ,'SALES' ,'TASK' ,'SUPPORT' ,'PROVISIONING' ,'WINBACK' )) 
              constraint "informix".team_type
  );

