drop table if exists "informix".ordactivity_reas ;
create table "informix".ordactivity_reas 
  (
    ordact_reas_code char(2) not null ,
    ordact_reas_narr varchar(64)
  );

