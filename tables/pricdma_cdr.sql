drop table if exists "informix".pricdma_cdr ;
create table "informix".pricdma_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    calling_no char(18),
    service_type char(1),
    aparty_number varchar(20,10),
    trans_code char(1),
    trans_type char(6),
    chg_amount decimal(12,2),
    cl_start_dtm datetime year to second,
    cl_orig_desc varchar(20,10),
    bparty_number varchar(20,10),
    call_duration interval second(8) to second,
    call_rate char(5)
  );

