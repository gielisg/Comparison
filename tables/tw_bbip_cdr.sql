drop table if exists "informix".tw_bbip_cdr ;
create table "informix".tw_bbip_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    output_row_id varchar(80),
    unique_id bigint not null ,
    rating_date date not null ,
    calling_number varchar(128) not null ,
    called_number varchar(128) not null ,
    cnumber varchar(128),
    start_dt datetime year to second not null ,
    duration_secs integer not null ,
    rate_list_name varchar(50) not null ,
    destination_name varchar(200) not null ,
    rated_curr_code varchar(3) not null ,
    rated_amount_ex decimal(18,10)
  );

