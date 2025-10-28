drop table if exists "informix".wrldcomday_cdr ;
create table "informix".wrldcomday_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    account_number char(15),
    cl_start_dt datetime year to second,
    product_id char(4),
    originating_cli varchar(30,1),
    terminating_cli varchar(30,1),
    initial_dial_str varchar(30,1),
    destination varchar(30,1),
    destination_code integer,
    charge decimal(14,4),
    cc_id integer,
    originating_chg decimal(14,4),
    originating_ccd integer,
    termination_chg decimal(14,4),
    termination_ccd integer,
    cost_centre_cd decimal(14),
    charge_band integer,
    call_duration decimal(10),
    time_zones integer,
    rotate_id decimal(11),
    network_id varchar(10),
    tr_suppr_id char(6),
    invoice_no char(10),
    carri_return char(2)
  );

