drop table if exists "informix".aaptnwb_data ;
create table "informix".aaptnwb_data 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    user_name varchar(50) not null ,
    acct_status_type varchar(10),
    acct_delay_time integer,
    acct_in_octets decimal(15,0) not null ,
    acct_out_octets decimal(15,0) not null ,
    acct_session_id varchar(10),
    acct_sessiontime integer,
    acct_term_cause varchar(15),
    nas_identifier varchar(15),
    nas_port integer,
    framed_ip_addr varchar(15),
    time_stamp datetime year to second not null ,
    domain_name varchar(50)
  );

