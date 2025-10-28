drop table if exists "informix".acct_type ;
create table "informix".acct_type 
  (
    acct_type char(3) not null ,
    display_order smallint 
        default 0 not null ,
    acct_narr char(32) not null 
  );

