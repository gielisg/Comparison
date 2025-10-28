drop table if exists "informix".sp_cn_order ;
create table "informix".sp_cn_order 
  (
    sp_cn_ref integer not null ,
    pro_code char(5),
    salesperson char(10),
    order_num varchar(20) not null ,
    despatch_date date not null 
  );

