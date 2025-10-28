drop table if exists "informix".dealer_staff ;
create table "informix".dealer_staff 
  (
    dealer_id char(10) not null ,
    contact_code char(10) not null ,
    emp_wef date 
        default today not null ,
    emp_wet date
  );

