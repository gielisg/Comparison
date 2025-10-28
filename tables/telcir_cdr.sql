drop table if exists "informix".telcir_cdr ;
create table "informix".telcir_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    family_id varchar(16),
    site_id varchar(16),
    a_party varchar(20),
    b_party varchar(20),
    charge_rate char(4),
    date_comm_chrg char(8),
    time_comm_chrg char(6),
    charge_time varchar(9),
    category char(2),
    future_use char(10),
    exch_id char(4),
    filler char(1),
    base_rate varchar(7),
    cvpn_cost char(7),
    cdp_proc_date char(8),
    call_class char(2),
    bearer_type char(1)
  );

