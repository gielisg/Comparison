drop table if exists "informix".aapt_bulk ;
create table "informix".aapt_bulk 
  (
    ntwtransid integer not null ,
    account char(10),
    type integer not null ,
    seq integer not null ,
    request_type char(2),
    service_type char(4),
    service_number char(20) not null ,
    range_start char(20),
    range_end char(20),
    cust_auth_date char(10),
    service_owner varchar(40),
    service_address varchar(50),
    locality varchar(40),
    post_code varchar(10),
    state varchar(10),
    bill_point varchar(50) not null 
  );

