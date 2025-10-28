drop table if exists "informix".ispvf_cdr ;
create table "informix".ispvf_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    uir_id varchar(12) not null ,
    customer_id varchar(255),
    call_start_time datetime year to second,
    originating_num varchar(20),
    destination_num varchar(20),
    tariff_code varchar(12),
    call_duration varchar(20),
    unit_measure_cd char(1),
    call_description varchar(255),
    call_group varchar(255),
    ws_call_chg decimal(15,4),
    rated_call_chg decimal(15,4)
  );

