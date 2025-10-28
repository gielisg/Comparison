drop table if exists "informix".opt_retailcdr ;
create table "informix".opt_retailcdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    file_rec_seq decimal(7,0),
    a_party varchar(20) not null ,
    section_code char(2) not null ,
    call_start_dtm datetime year to second,
    b_party_narr varchar(20) not null ,
    b_party varchar(20) not null ,
    peak_flg char(2),
    distance_flg char(2),
    zone_flg char(2) not null ,
    dur_seconds integer,
    nt_cost decimal(14,3),
    type_desc varchar(10),
    type_code char(5),
    plan_desc varchar(15),
    chg_type_code varchar(5),
    chg_type_desc varchar(50),
    chg_amt decimal(12,3),
    recur_chg_desc varchar(50),
    display_flag char(1),
    start_period varchar(8),
    end_period varchar(8),
    chg_rate decimal(12,3),
    chg_qty decimal(8,0),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

