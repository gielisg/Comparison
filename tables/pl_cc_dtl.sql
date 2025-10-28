drop table if exists "informix".pl_cc_dtl ;
create table "informix".pl_cc_dtl 
  (
    pl_id integer not null ,
    line_num smallint not null ,
    seq_no integer
  );

