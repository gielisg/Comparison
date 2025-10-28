drop table if exists "informix".st_mobvoc18 ;
create table "informix".st_mobvoc18 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(1),
    file_type char(1),
    copy_book_type char(1),
    traffic_type char(2),
    nw_svc_type char(2),
    nw_svc_id varchar(21),
    nw_svc_line_num char(4),
    date_of_call char(8),
    time_of_call char(6),
    destination_code char(7),
    route_code varchar(4),
    called_num varchar(24),
    calling_num varchar(21),
    exchange_code char(2),
    creation_ind char(1),
    counter_ind char(1),
    ref_num varchar(8),
    loc_outpymt_ind char(1),
    cell_id varchar(15),
    filler varchar(12),
    indicator_area varchar(40),
    vpg18_duration varchar(10),
    vpg18_charge_type char(1),
    vpg18_filler varchar(80)
  );

