drop table if exists "informix".fin_dsp_hdr ;
create table "informix".fin_dsp_hdr 
  (
    fin_ref integer not null ,
    dsp_id integer not null 
  );

