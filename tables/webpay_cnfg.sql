drop table if exists "informix".webpay_cnfg ;
create table "informix".webpay_cnfg 
  (
    client_id char(30) not null ,
    gateway char(50) not null ,
    port_no char(10) not null ,
    cert_file varchar(254,20) not null ,
    cert_passwd varchar(18,10) not null 
  );

