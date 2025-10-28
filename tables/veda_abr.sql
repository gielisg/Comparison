drop table if exists "informix".veda_abr ;
create table "informix".veda_abr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    quantity decimal(10,2),
    product_id integer,
    unit_price decimal(12,4),
    tparty_cost decimal(12,4),
    branch_code char(16),
    request_id varchar(254,10),
    order_dt datetime year to second,
    service_code char(20),
    service_desc varchar(100),
    product_code varchar(100),
    product_desc varchar(200),
    user_id varchar(40),
    user_name varchar(100),
    client_field1 varchar(100),
    client_field2 varchar(100),
    search_criteria lvarchar(300),
    extra_comments lvarchar(300)
  );

