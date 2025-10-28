drop table if exists "informix".ord_dsp_cfg ;
create table "informix".ord_dsp_cfg 
  (
    bus_unit_code char(2) not null ,
    stk_serializ_flg char(1),
    con_note_flg char(1)
  );

