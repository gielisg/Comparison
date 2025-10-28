drop table if exists "informix".ord_ph_charge ;
create table "informix".ord_ph_charge 
  (
    ord_ph_dref integer not null ,
    chg_code char(4) not null ,
    chg_amount decimal(6,2) 
        default 0.00 not null 
  );

