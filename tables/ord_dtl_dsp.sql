drop table if exists "informix".ord_dtl_dsp ;
create table "informix".ord_dtl_dsp 
  (
    ord_id integer not null ,
    ord_line_num smallint not null ,
    dsp_id integer not null ,
    dsp_line_num smallint not null ,
    ord_qty_dsp smallint not null ,
    bck_ord_qty smallint 
        default 0 not null 
  );

