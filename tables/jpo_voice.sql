drop table if exists "informix".jpo_voice ;
create table "informix".jpo_voice 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    detail_id varchar(20),
    icc_id varchar(50),
    msisdn varchar(50),
    imsi varchar(50),
    acct_id varchar(20),
    bill_flag char(1),
    bill_cycle varchar(20),
    sim_state integer,
    serv_type varchar(50),
    rate_plan_id varchar(20),
    rate_zone_id varchar(20),
    rec_open_tm varchar(20),
    record_dt varchar(20),
    from_msisdn varchar(50),
    to_msisdn varchar(50),
    raw_dur decimal(15,0),
    rounded_dur decimal(15,0),
    op_network varchar(20),
    tap_code varchar(20),
    op_acct_id varchar(200),
    pl_version_id varchar(20)
  );

