drop table if exists "informix".prod_chg ;
create table "informix".prod_chg 
  (
    prod_chg_ref serial not null ,
    prod_code char(20) not null ,
    sell_start_date date not null ,
    sell_end_date date not null ,
    min_sell_price decimal(6,2) not null ,
    pro_code char(5),
    pkg_code integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

