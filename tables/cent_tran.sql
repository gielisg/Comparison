drop table if exists "informix".cent_tran ;
create table "informix".cent_tran 
  (
    dsp_sr_id integer not null ,
    stth_transid char(8) not null ,
    type char(1) not null ,
    
    check (type IN ('D' ,'S' )) constraint "informix".tran_type13,
    
    check (type IN ('D' ,'S' )) constraint "informix".tran_type20
  );

