drop table if exists "informix".master_policy ;
create table "informix".master_policy 
  (
    master_policy_id serial not null ,
    insurer_id integer not null ,
    master_policy_narr varchar(32),
    master_policy_desc varchar(128),
    master_policy_imag varchar(255),
    master_policy_url varchar(255),
    master_policy_sale char(2000),
    master_policy_inet char(1) 
        default 'N',
    master_policy_void char(1) 
        default 'N' not null ,
    plan_type char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (master_policy_inet IN ('N' ,'Y' )) constraint "informix".yes_no
    
    check (master_policy_void IN ('N' ,'Y' )) constraint "informix".yes_no
  );

