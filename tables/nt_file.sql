drop table if exists "informix".nt_file ;
create table "informix".nt_file 
  (
    nt_file_num serial not null ,
    nt_cust_num char(10) not null ,
    file_type_code char(10) not null ,
    nt_file_seq integer not null ,
    status_id integer not null ,
    nt_file_name varchar(80) not null ,
    nt_file_date date 
        default today not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

