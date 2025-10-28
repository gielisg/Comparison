drop table if exists "informix".resv_num_chgs ;
create table "informix".resv_num_chgs 
  (
    resv_num_typ_id char(2) not null ,
    from_dt datetime year to second not null ,
    chg_code char(4) not null ,
    chg_amount decimal(8,2) 
        default 0.00 not null 
  );

