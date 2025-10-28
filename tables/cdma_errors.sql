drop table if exists "informix".cdma_errors ;
create table "informix".cdma_errors 
  (
    ord_num char(10) not null ,
    err_date datetime year to second not null ,
    err_code char(10),
    err_desc varchar(60)
  );

