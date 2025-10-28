drop table if exists "informix".tel_de_ntr ;
create table "informix".tel_de_ntr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(3),
    sp_code char(3),
    wrg char(6),
    pbi char(8),
    bec char(8),
    act_compltd char(1),
    serv_chg_grp varchar(20),
    unbill_indictr char(1),
    gst_perc_rate decimal(7,4),
    rate_start_date date,
    rate_end_date date,
    unit_rate_signed decimal(16,7),
    bill_elem_cat char(1),
    description varchar(50),
    unit_high_qty decimal(8,0),
    unit_low_qty decimal(8,0),
    cust_arr_id decimal(8,0),
    agr_start_date date,
    agr_end_date date,
    tariff_change char(1)
  );

