drop table if exists "informix".tel_de_oc ;
create table "informix".tel_de_oc 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(3) not null ,
    sp_code char(3),
    cust_prod_item char(10),
    ebill_file_id char(8),
    pbi char(8),
    bec char(8),
    inv_arrange_id char(10),
    serv_arrange_id char(10),
    service_num char(29),
    po_num char(16),
    prod_eff_date char(10),
    unit_rate_signed decimal(16,7),
    qty decimal(5,2),
    ord_neg_rate char(1),
    tot_install_qty decimal(2),
    bill_trans_desc char(50),
    prod_desc_1 char(30),
    prod_desc_2 char(30),
    prod_desc_3 char(30),
    price_ex_signed decimal(16,7)
  );

