drop table if exists "informix".resv_num_resp ;
create table "informix".resv_num_resp 
  (
    resv_number_id integer not null ,
    resp_code integer,
    response char(40),
    resp_dt datetime year to second
  );

