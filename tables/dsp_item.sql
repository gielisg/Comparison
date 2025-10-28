drop table if exists "informix".dsp_item ;
create table "informix".dsp_item 
  (
    ord_id integer not null ,
    ord_line_num smallint not null ,
    dsp_id integer not null ,
    dsp_line_num smallint not null ,
    dsp_seq_num integer not null ,
    dsp_ser_num varchar(20),
    whse_location char(6)
  );

