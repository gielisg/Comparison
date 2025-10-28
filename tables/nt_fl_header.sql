drop table if exists "informix".nt_fl_header ;
create table "informix".nt_fl_header 
  (
    nt_file_num integer not null ,
    nt_cust_num char(10) not null ,
    nt_earliest_call date,
    nt_latest_call date,
    nt_proc_date date,
    nt_proc_time datetime hour to second,
    nt_batch_num integer,
    nt_tot_in_batch smallint,
    nt_file_in_batch smallint,
    nt_invoice_num char(8),
    nt_inv_month smallint
  );

