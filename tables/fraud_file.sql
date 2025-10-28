drop table if exists "informix".fraud_file ;
create table "informix".fraud_file 
  (
    date_advised date,
    surname varchar(32),
    firstname varchar(32),
    unit_num char(5),
    street_num char(5),
    street_name varchar(32),
    street_type char(20),
    suburb varchar(32),
    city varchar(32),
    state char(3),
    postcode char(5),
    dob date,
    sex char(1),
    doc_ref char(20),
    oth_dtl varchar(254),
    
    check (sex IN ('M' ,'F' )) constraint "informix".sex63
  );

