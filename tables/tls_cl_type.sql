drop table if exists "informix".tls_cl_type ;
create table "informix".tls_cl_type 
  (
    prod_bill_id char(8) not null ,
    bill_elem_id char(8) not null ,
    dist_rang_cd char(4) not null ,
    telstra_descr varchar(70,1)
  );

