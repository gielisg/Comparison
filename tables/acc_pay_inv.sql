drop table if exists "informix".acc_pay_inv ;
create table "informix".acc_pay_inv 
  (
    pay_file_ref integer not null ,
    acc_pay_meth_ref integer not null ,
    pay_num char(10) not null 
  );

