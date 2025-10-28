drop table if exists "informix".ssswhls_cdr ;
create table "informix".ssswhls_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_number integer,
    transaction_type char(1),
    orig_cl_ser_num varchar(80),
    cl_start_dt datetime year to second,
    cl_start_dt_utc datetime year to second,
    unitquantity decimal(15,7),
    uom char(1),
    originating_srvc varchar(64) not null ,
    terminating_srvc varchar(64),
    call_destination varchar(32),
    time_code char(4),
    plan_code integer,
    tariff_code char(10),
    nt_cost_ex decimal(12,6),
    nt_cost_tax decimal(12,6),
    nt_disc_cost_ex decimal(12,6),
    nt_disc_cost_tax decimal(12,6),
    cl_end_dt datetime year to second,
    reversal_flag char(1),
    reversal_ref decimal(12,0),
    network char(2),
    country_orig char(3),
    telecom_dir char(2),
    camel_ref varchar(16),
    nt_cl_orig char(2),
    cellid_sae varchar(5),
    indicator_2g3g char(1)
  );

