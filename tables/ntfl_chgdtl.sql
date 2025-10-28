drop table if exists "informix".ntfl_chgdtl ;
create table "informix".ntfl_chgdtl 
  (
    nt_fl_dtl_ref serial not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer 
        default 0 not null ,
    status_id integer not null ,
    phone_num varchar(64,1),
    sp_cn_ref integer,
    sp_plan_ref integer,
    sp_cn_chg_ref integer,
    chg_code char(4),
    start_date datetime year to second,
    end_date datetime year to second,
    calc_amount decimal(18,10) 
        default 0.0000000000 not null ,
    calc_gst decimal(18,10) 
        default 0.0000000000 not null ,
    man_amount decimal(18,10) 
        default 0.0000000000 not null ,
    man_gst decimal(18,10) 
        default 0.0000000000 not null ,
    cost_amount decimal(18,10) 
        default 0.0000000000 not null ,
    cost_gst decimal(18,10) 
        default 0.0000000000 not null ,
    unitquantity decimal(20,10) 
        default 1.0000000000 not null ,
    dest_db char(18),
    chg_narr char(64),
    use_net_price char(1),
    net_prc_prorated char(1),
    frequency char(1),
    uplift_perc decimal(10,6),
    uplift_amt decimal(18,10),
    prorate_ratio decimal(6,3) 
        default 1.000 not null ,
    ch_dt_tabcd char(4) not null ,
    nt_chg_reas_code char(2),
    note varchar(255),
    case_no varchar(16),
    nt_ref varchar(64),
    nt_valid_series char(1) 
        default 'N' not null ,
    nt_ref_series integer,
    nt_ref_seqn integer,
    off_nt_file_num integer,
    orig_end_date datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (frequency IN ('D' ,'W' ,'M' ,'I' ,'Y' ,'N' ,'Q' ,'H' ,'B' ,'2' ,'S' ,'3' ,'5' )) 
              constraint "informix".freq_dwmiynq59
  );

