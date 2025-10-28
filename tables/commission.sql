drop table if exists "informix".commission ;
create table "informix".commission 
  (
    pkg_code char(5),
    prod_code char(10),
    start_date date not null ,
    end_date date,
    network_rebate decimal(6,2),
    manu_rebate decimal(6,2),
    salesman_comm decimal(6,2)
  );

