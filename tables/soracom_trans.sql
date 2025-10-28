drop table if exists "informix".soracom_trans ;
create table "informix".soracom_trans 
  (
    soracom_transid serial not null ,
    imsi varchar(20),
    date varchar(8),
    billitemname varchar(255),
    unitprice varchar(50),
    quantity varchar(50),
    amount varchar(50),
    name varchar(255),
    contact_code char(10),
    sp_cn_chg_ref integer
  );

