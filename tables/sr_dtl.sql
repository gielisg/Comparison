drop table if exists "informix".sr_dtl ;
create table "informix".sr_dtl 
  (
    sr_id integer not null ,
    seq_num integer not null ,
    ord_id integer not null ,
    ord_line_num smallint not null ,
    qty smallint not null ,
    ser_num char(20),
    rtn_type smallint not null ,
    rtn_code char(2) 
        default 'PN' not null ,
    unit_prc_inc decimal(6,2) not null ,
    unit_tax decimal(6,2) 
        default 0.00 not null ,
    
    check (seq_num >= 0 ) constraint "informix".greater_eq_0135,
    
    check (seq_num >= 0 ) constraint "informix".greater_eq_0204,
    
    check (unit_prc_inc >= 0. ) constraint "informix".greater_eq_0206,
    
    check (unit_tax >= 0. ) constraint "informix".greater_eq_0207,
    
    check (rtn_code IN ('PN' ,'PU' ,'RE' )) constraint "informix".sr_rtn_code16
  );

