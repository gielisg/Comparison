drop table if exists "informix".comind_cdr ;
create table "informix".comind_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cdr_type char(3) not null ,
    med_cdr_id decimal(20,0) not null ,
    ntw_elem_type varchar(15,1) not null ,
    orig_carrier varchar(10,1) not null ,
    orig_number varchar(30,10) not null ,
    orig_timezone varchar(40,1),
    orig_servicekey varchar(30,1),
    term_carrier varchar(10,1) not null ,
    term_number varchar(30,10) not null ,
    trsl_term_number varchar(30,1),
    term_servicekey varchar(30,1),
    answer_time_utc datetime year to second not null ,
    release_time_utc datetime year to second not null ,
    call_duration decimal(10,0) not null ,
    calling_partycat varchar(10,1),
    signal_type varchar(10,1) not null ,
    inrt_servicekey varchar(30,1),
    call_case_name varchar(10,1),
    call_reference varchar(18,1) not null ,
    call_hostname varchar(18,1) not null ,
    raw_cdr_seqno decimal(20,0) not null ,
    raw_cdr_filename varchar(40,1) not null 
  );

