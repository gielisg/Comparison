drop table if exists "informix".doc_cust_type ;
create table "informix".doc_cust_type 
  (
    doc_id integer not null ,
    type char(1) not null ,
    sub_type_code char(2) not null ,
    
    check (type IN ('P' ,'B' )) constraint "informix".contact_type231
  );

