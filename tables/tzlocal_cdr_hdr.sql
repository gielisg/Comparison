drop table if exists "informix".tzlocal_cdr_hdr ;
create table "informix".tzlocal_cdr_hdr 
  (
    nt_file_num integer not null ,
    file_name varchar(10),
    extract_date varchar(8),
    extract_time varchar(6),
    customer_number varchar(9),
    external_company varchar(20),
    next_bill_month char(2),
    num_of_rec varchar(15)
  );

