drop table if exists "informix".amcom_cdr ;
create table "informix".amcom_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    field_type varchar(10),
    bwgroup_id varchar(30),
    bwgroup_num varchar(20),
    record_id varchar(100,50),
    cl_category varchar(100),
    cl_start_date char(8),
    cl_start_time char(6),
    cl_duration decimal(13,3),
    calling_num varchar(63,10),
    called_num varchar(63,10),
    calling_zone varchar(120),
    called_zone varchar(120),
    call_cost decimal(13,3),
    call_cost2 decimal(13,3),
    sp_id varchar(100),
    field_1 varchar(120),
    field_2 varchar(120),
    field_3 varchar(120),
    field_4 varchar(120)
  );

