drop table if exists "informix".nrtrde_cdr ;
create table "informix".nrtrde_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(1),
    imsi varchar(21),
    date varchar(8),
    time varchar(6),
    called_number varchar(18),
    exchange_code char(2),
    call_charge varchar(10),
    roaming_sv_ind char(1),
    call_direction char(1),
    charging_method char(2),
    charge_duration varchar(10),
    charge_volume varchar(10),
    billable_charge varchar(10),
    operator_name varchar(25),
    operator_code varchar(5),
    call_media char(2),
    call_type char(2),
    uplink varchar(10),
    downlink varchar(10)
  );

