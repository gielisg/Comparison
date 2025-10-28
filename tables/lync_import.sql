drop table if exists "informix".lync_import ;
create table "informix".lync_import 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sp_cn_ref integer,
    sp_cn_chg_ref integer,
    status_id integer 
        default 0 not null ,
    sequence_number integer not null ,
    connect_id varchar(255) not null ,
    phone_num varchar(10),
    agency varchar(20) not null ,
    billing_label varchar(64),
    start_date date,
    end_date date,
    action_type char(1) not null ,
    product varchar(20),
    comment varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

