drop table if exists "informix".nextepchg ;
create table "informix".nextepchg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    cust_acc varchar(10),
    invoice varchar(10),
    bill_to_name varchar(50),
    sold_to varchar(10),
    sold_to_name varchar(50),
    sold_to_address varchar(254),
    site_id varchar(10),
    service_address varchar(254),
    date_due date,
    iss_date date,
    period char(8),
    section varchar(15),
    item varchar(20),
    description varchar(50),
    from date,
    to date,
    ip_address varchar(50),
    qty decimal(16,0),
    volume_mb decimal(16,0),
    rate decimal(16,4),
    ex_gst_price decimal(16,4)
  );

