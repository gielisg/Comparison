drop table if exists "informix".sph_cdr ;
create table "informix".sph_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    seq_num varchar(30),
    charge_type varchar(50),
    start_date varchar(20),
    start_time varchar(20),
    end_date varchar(20),
    duration varchar(20),
    aparty varchar(63),
    bparty varchar(63),
    charged_party varchar(63),
    cost varchar(20),
    call_type varchar(80),
    description varchar(250),
    quantity varchar(20),
    chg_dt datetime year to second,
    chg_serv varchar(64),
    chg_amt decimal(14,4)
  );

