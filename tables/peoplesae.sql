drop table if exists "informix".peoplesae ;
create table "informix".peoplesae 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    mobile_no varchar(15),
    group_chg_desc varchar(32,10) not null ,
    chg_type char(1),
    amount decimal(10,2),
    open_date varchar(10),
    close_date varchar(10),
    chg_code varchar(25),
    active char(1)
  );

