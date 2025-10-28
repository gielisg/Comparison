drop table if exists "informix".mm_ug_cdr ;
create table "informix".mm_ug_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    gtwy_vendor_id varchar(50),
    gtwy_account_id varchar(200),
    event lvarchar(500),
    dr_msg_status varchar(20),
    delivery_rct_req varchar(10),
    message_type varchar(2),
    traffic_class varchar(20),
    destaddr_country varchar(2),
    destaddr_carrier varchar(36),
    provider_id varchar(36),
    service_type varchar(20),
    source varchar(255),
    broadcast_narr varchar(255),
    total varchar(255),
    msg_bat_startdt varchar(128),
    msg_bat_enddt varchar(128),
    aggregator_id varchar(36)
  );

