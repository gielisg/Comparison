drop table if exists "informix".veda_detran ;
create table "informix".veda_detran 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    de_customer_id varchar(32) not null ,
    from_date date not null ,
    to_date date not null ,
    trans_type char(12) not null ,
    quantity integer not null 
  );

