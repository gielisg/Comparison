drop table if exists "informix".valuenet_cdr ;
create table "informix".valuenet_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cdr_type integer not null ,
    oid_call varchar(30) not null ,
    start_time_gmt datetime year to second not null ,
    answer_time_gmt datetime year to second not null ,
    end_time_gmt datetime year to second not null ,
    srce_caller_id varchar(30),
    dest_caller_id varchar(30),
    billing varchar(30),
    auth_code varchar(30),
    call_type char(1),
    extended_call char(1),
    external_call char(1),
    duration integer,
    carried_id_code integer,
    completion_reas char(4),
    billed_srce_did varchar(20),
    billing_type varchar(30),
    billing_locn_did varchar(20,10) not null ,
    timezone varchar(20,10) not null ,
    wholesale_cost decimal(14,6)
  );

