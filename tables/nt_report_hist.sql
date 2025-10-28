drop table if exists "informix".nt_report_hist ;
create table "informix".nt_report_hist 
  (
    nt_report_histid serial not null ,
    nt_file_num integer not null ,
    service_id varchar(64) not null ,
    status_load_dtm datetime year to second 
        default current year to second not null ,
    delim_content char(1200) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

