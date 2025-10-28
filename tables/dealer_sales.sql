drop table if exists "informix".dealer_sales ;
create table "informix".dealer_sales 
  (
    dealer_id char(10) not null ,
    contact_code char(10) not null ,
    salesrep_name varchar(254,20) not null ,
    passwd char(18)
  );

