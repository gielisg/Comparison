drop table if exists "informix".vocus_day_report ;
create table "informix".vocus_day_report 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    status_id integer 
        default 0 not null ,
    from_date varchar(10),
    to_date varchar(10),
    wholesaler_ref varchar(10),
    service_number varchar(50),
    product_type varchar(20),
    plan varchar(50),
    comment varchar(255)
  );

