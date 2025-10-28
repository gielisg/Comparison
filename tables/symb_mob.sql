drop table if exists "informix".symb_mob ;
create table "informix".symb_mob 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    ref_id varchar(150),
    usage_type varchar(20),
    cl_starttime varchar(20),
    orig_num varchar(60),
    dest_num varchar(60),
    tariff_code varchar(100),
    cl_duration decimal(13,0),
    cl_uom varchar(10),
    cl_desc varchar(250),
    cl_group varchar(200),
    base_price decimal(12,3),
    cust_price decimal(12,3),
    asp_plan_id varchar(200),
    ach_plan_id varchar(200)
  );

