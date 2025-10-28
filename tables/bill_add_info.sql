drop table if exists "informix".bill_add_info ;
create table "informix".bill_add_info 
  (
    bill_ref integer not null ,
    client_ref varchar(64),
    main_ref varchar(64),
    tel_ref varchar(64),
    int_ref varchar(64),
    dd_ref varchar(64),
    bpay_ref varchar(64),
    ap_ref varchar(64),
    ap_barcode varchar(64),
    ap_bcode_chksum varchar(64),
    ap_key_line varchar(64),
    ap_barcode_text varchar(64),
    bx_ref varchar(64),
    se_ref varchar(64),
    chq_ref varchar(64),
    bcode_image text,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

