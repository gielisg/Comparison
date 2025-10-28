drop table if exists "informix".tb_cdr ;
create table "informix".tb_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    conference_id varchar(20),
    bridge_name varchar(254),
    conf_num varchar(20),
    conf_start varchar(20),
    call_start varchar(25),
    caller_id varchar(20),
    caller_id_name varchar(50),
    to_number varchar(20),
    caller_location varchar(50),
    rate_type varchar(50),
    rate_cat varchar(20),
    duration varchar(20),
    usage_cost varchar(20),
    fusf_cost varchar(20),
    total_cost varchar(20)
  );

