drop table if exists "informix".tlknet_cdr ;
create table "informix".tlknet_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    business_name varchar(40,1),
    external_id varchar(40,1),
    aparty varchar(40,1),
    call_start_dtm datetime year to second,
    call_destination varchar(64,1),
    bparty varchar(40,1),
    call_duration interval hour(4) to second,
    charged_amount decimal(12,4),
    call_release integer,
    call_release_txt varchar(64,1),
    call_complete integer,
    call_complete_txt varchar(64,1)
  );

