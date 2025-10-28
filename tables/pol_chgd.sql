drop table if exists "informix".pol_chgd ;
create table "informix".pol_chgd 
  (
    pol_chg_num integer not null ,
    pol_chg_period smallint not null ,
    pol_chg_price decimal(7,2) not null ,
    pol_chg_cost decimal(7,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

