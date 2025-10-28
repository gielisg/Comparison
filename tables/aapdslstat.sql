drop table if exists "informix".aapdslstat ;
create table "informix".aapdslstat 
  (
    aaplinestatid serial not null ,
    service char(30) not null ,
    status_dt datetime year to second not null ,
    order_id char(20),
    order_filename varchar(128,1),
    status char(20),
    date_logged char(30),
    message varchar(255,1),
    cust_id char(20),
    conn_speed char(20),
    reference varchar(128,1)
  );

