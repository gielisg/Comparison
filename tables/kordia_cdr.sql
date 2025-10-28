drop table if exists "informix".kordia_cdr ;
create table "informix".kordia_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acct_num varchar(30),
    call_from varchar(20),
    call_to varchar(20),
    country varchar(80),
    description varchar(120),
    date_time_utc char(20),
    charged_time char(8),
    amount decimal(13,3),
    call_id varchar(20),
    destination varchar(20),
    branch_name varchar(100),
    branch_refer varchar(80),
    country_code varchar(20),
    date_time_nz varchar(30),
    charge_secs integer,
    org_code varchar(20)
  );

