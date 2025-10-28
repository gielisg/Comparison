drop table if exists "informix".telcorpcdr ;
create table "informix".telcorpcdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(2),
    call_card_num decimal(10,0),
    call_start_dtm datetime year to second,
    call_durn_sec integer,
    number_dialled varchar(60),
    destination varchar(60),
    a_party_number varchar(60),
    a_party_location varchar(60),
    call_type varchar(30),
    call_cost_ex decimal(10,3),
    call_cost_tax decimal(10,3),
    gst_flg char(1),
    chg_start_dtm datetime year to second,
    chg_end_dtm datetime year to second,
    rate_type char(5),
    band_step char(10)
  );

