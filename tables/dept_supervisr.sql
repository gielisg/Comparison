drop table if exists "informix".dept_supervisr ;
create table "informix".dept_supervisr 
  (
    dept_code char(3) not null ,
    login_code varchar(18) not null 
  );

