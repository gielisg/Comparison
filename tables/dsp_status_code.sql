drop table if exists "informix".dsp_status_code ;
create table "informix".dsp_status_code 
  (
    dsp_status_code char(4) not null ,
    dsp_status_narr varchar(32)
  );

