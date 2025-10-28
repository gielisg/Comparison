drop table if exists "informix".aapt_gsmretail ;
create table "informix".aapt_gsmretail 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    aparty varchar(30,1),
    bparty varchar(30,1),
    destination varchar(40,1),
    cl_start_dt datetime year to second,
    cl_duration interval hour(4) to second,
    retail_price decimal(14,4)
  );

