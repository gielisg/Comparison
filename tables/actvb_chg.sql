drop table if exists "informix".actvb_chg ;
create table "informix".actvb_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    service_no varchar(50),
    description varchar(255),
    start_date date,
    end_date date,
    amount decimal(14,4),
    tax decimal(14,4),
    total decimal(14,4)
  );

