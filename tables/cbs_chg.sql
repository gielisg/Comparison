drop table if exists "informix".cbs_chg ;
create table "informix".cbs_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(1),
    record_id varchar(100),
    debtor_code varchar(20),
    service_id varchar(20),
    charge_code varchar(10),
    charge_narrative varchar(255),
    charge_start_time varchar(20),
    charge_end_time varchar(20),
    charge_ex_tax varchar(20),
    tax_component varchar(20),
    bill_narrative varchar(50),
    units varchar(5),
    unit_qty varchar(5),
    unit_price_ex_tax varchar(20),
    chg_start_time datetime year to second,
    chg_end_time datetime year to second
  );

