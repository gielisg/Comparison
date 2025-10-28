drop table if exists "informix".iseekdsl_cdr ;
create table "informix".iseekdsl_cdr 
  (
    nt_file_num integer not null ,
    src_rec_num integer not null ,
    client_id varchar(20),
    adsl_connect varchar(20),
    service_name varchar(254),
    usg_start_dt datetime year to second,
    usg_end_dt datetime year to second,
    uploads decimal(15,7),
    downloads decimal(15,7)
  );

