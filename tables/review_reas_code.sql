drop table if exists "informix".review_reas_code ;
create table "informix".review_reas_code 
  (
    review_reas_code char(2) not null ,
    review_reas_narr char(32)
  );

