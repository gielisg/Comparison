drop table if exists "informix".tztfr_cdr ;
create table "informix".tztfr_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    to_num varchar(63),
    answer_point varchar(63),
    date_time varchar(30),
    conversa_dur varchar(20),
    billable_dur varchar(20),
    from_num varchar(63),
    region varchar(150),
    city varchar(150),
    area varchar(150),
    billable varchar(10),
    bparty varchar(63),
    bparty_con varchar(250),
    call_type varchar(100),
    call_cost varchar(20)
  );

