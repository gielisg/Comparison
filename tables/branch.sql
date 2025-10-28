drop table if exists "informix".branch ;
create table "informix".branch 
  (
    branch_code char(3) not null ,
    dflt_stk_loc char(3) not null ,
    branch_narr varchar(32) not null 
  );

