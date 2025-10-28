drop table if exists "informix".sasboss_cdr ;
create table "informix".sasboss_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    enterprise_name varchar(50),
    enterprise_ref varchar(20),
    reseller_cdr_id varchar(20),
    retail_cdr_id varchar(20),
    connect_time varchar(20),
    cli varchar(20),
    cld varchar(20),
    call_type varchar(50),
    duration varchar(20),
    ws_charged_qty varchar(20),
    ws_tot_call_charge varchar(20),
    rt_charged_qty varchar(20),
    rt_tot_call_charge varchar(20),
    enterprise_id varchar(10),
    group_id varchar(10),
    service_id varchar(10),
    service_ref varchar(50),
    rate_id varchar(10),
    phone_number varchar(20)
  );

