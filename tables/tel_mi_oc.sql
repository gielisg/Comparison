drop table if exists "informix".tel_mi_oc ;
create table "informix".tel_mi_oc 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    inv_arrange_id char(10),
    bill_issue_dt date,
    doc_ref_num char(10),
    inv_rec_seq_num decimal(9,0),
    section_type char(2),
    line_type char(1),
    glo_itm_ref_num char(7),
    inv_class_desc char(30),
    service_num char(29),
    quantity decimal(10,0),
    bill_trans_desc char(50),
    trans_type_desc char(25),
    trans_type_code char(1),
    start_dt date,
    end_dt date,
    purch_ord_num char(16),
    unit_rate_incl decimal(18,7) 
        default 0.0000000 not null ,
    summ_grs_amt_ex decimal(14,4),
    summ_net_amt_ex decimal(14,4),
    gst_amt decimal(14,4),
    summ_price_incl decimal(14,4),
    svc_num_label char(30),
    fid_txt_desc varchar(128),
    instal_pay_num decimal(10,0),
    instal_pay_tot decimal(10,0),
    pbi char(8),
    bec char(8)
  );

