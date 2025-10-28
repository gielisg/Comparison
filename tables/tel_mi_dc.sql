drop table if exists "informix".tel_mi_dc ;
create table "informix".tel_mi_dc 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    inv_arrange_id char(10),
    bill_issue_dt date,
    doc_ref_num char(10),
    inv_rec_seq_num decimal(9,0),
    section_type char(2),
    line_type char(1),
    dir_chg_rec_type char(1),
    glo_itm_ref_num char(7),
    inv_class_desc char(30),
    service_num char(29),
    svc_num_label char(30),
    prod_offering_n char(40),
    instal_pay_num decimal(10,0),
    generic_qty decimal(10,0),
    start_dt date,
    unit_rate_incl decimal(18,7) not null ,
    summ_grs_amt_ex decimal(14,4),
    summ_net_amt_ex decimal(14,4),
    gst_amt decimal(14,4),
    summ_price_incl decimal(14,4),
    text_one char(30),
    pbi char(8),
    bec char(8)
  );

