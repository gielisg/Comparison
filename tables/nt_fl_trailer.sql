drop table if exists "informix".nt_fl_trailer ;
create table "informix".nt_fl_trailer 
  (
    nt_file_num integer not null ,
    nt_earliest_call date,
    nt_latest_call date,
    nt_proc_date date,
    nt_proc_time datetime hour to second,
    nt_tot_quantity decimal(22,10),
    nt_tot_cost decimal(22,10),
    nt_tot_rec integer,
    nt_tot_non_disc decimal(22,10),
    nt_batch_num integer,
    nt_tot_in_batch smallint,
    nt_file_in_batch smallint,
    nt_invoice_num char(8),
    nt_inv_month smallint,
    nt_tot_rec_batch integer
  );

