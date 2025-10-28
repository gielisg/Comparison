drop table if exists "informix".recallwbc ;
create table "informix".recallwbc 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    payer_id varchar(29),
    tt_type char(1),
    bill_amt decimal(10,2),
    orig_system char(2) not null ,
    tidd_recpno varchar(8),
    voucher_no varchar(16),
    bpay_recpno varchar(21),
    trans_type char(4),
    trans_seqno smallint,
    debit_info varchar(16),
    dr_count varchar(2),
    dr_aux_dom varchar(12),
    dr_bsb varchar(6),
    dr_accno varchar(20),
    dr_trans_type varchar(4),
    cash_amt decimal(12,2),
    cheque_amt decimal(12,2)
  );

