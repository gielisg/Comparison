drop table if exists "informix".chome_cdr ;
create table "informix".chome_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acc_code varchar(20),
    ddi_call varchar(20),
    caller_id varchar(25),
    num_called varchar(25),
    call_start_dtm datetime year to second,
    duration_secs interval second(8) to second,
    call_cost decimal(10,3),
    chg_code varchar(10),
    card_num varchar(20),
    unknown1 char(3)
  );

