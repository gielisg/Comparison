drop table if exists "informix".netsip_cdr ;
create table "informix".netsip_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_id varchar(200),
    cl_date_time varchar(30),
    source varchar(60),
    destination varchar(60),
    cl_duration integer,
    cl_state varchar(30),
    cl_direction varchar(30),
    rate_plan varchar(30),
    price decimal(13,3),
    invoice_num varchar(200),
    sipauthuser varchar(30),
    divertreason varchar(200)
  );

