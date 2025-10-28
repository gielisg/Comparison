drop table if exists "informix".pol_chgh ;
create table "informix".pol_chgh 
  (
    pol_chg_num serial not null ,
    master_policy_id integer not null ,
    chg_code char(4) not null ,
    state_code char(3),
    start_date datetime year to second not null ,
    end_date datetime year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

