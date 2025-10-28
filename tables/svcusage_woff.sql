drop table if exists "informix".svcusage_woff ;
create table "informix".svcusage_woff 
  (
    phone_num varchar(60) not null ,
    start_dt datetime year to second 
        default  datetime (2020-01-01 00:00:00) year to second not null ,
    file_type_code varchar(10) 
        default 'ALL',
    end_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    nt_file_num integer,
    nt_file_rec_num integer,
    note varchar(250),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

