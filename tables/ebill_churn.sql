drop table if exists "informix".ebill_churn ;
create table "informix".ebill_churn 
  (
    ntwtransid integer not null ,
    churn_id decimal(9,0) not null ,
    service_num char(17) not null ,
    ebill_prod_pkg char(3) not null ,
    ca_sign_date date not null 
  );

