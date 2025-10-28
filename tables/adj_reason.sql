drop table if exists "informix".adj_reason ;
create table "informix".adj_reason 
  (
    adj_reas_code char(2) not null ,
    adj_reas_narr varchar(32,1) not null 
  );

