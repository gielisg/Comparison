drop table if exists "informix".optus_ppr ;
create table "informix".optus_ppr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    report_date date not null ,
    grp_acct_num varchar(6),
    acct_num varchar(14) not null ,
    service_num varchar(13) not null ,
    asd_code char(3),
    carrier_code char(3),
    carrier_name varchar(15),
    choice_date date,
    date_confirm date,
    ppr_status varchar(15),
    reject_code char(2),
    end_date date,
    loss_code char(2),
    loss_rpt_psd char(3),
    new_srv_num varchar(13),
    rtp_line varchar(200)
  );

