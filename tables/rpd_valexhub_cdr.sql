drop table if exists "informix".rpd_valexhub_cdr ;
create table "informix".rpd_valexhub_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    crmaccountid char(10) not null ,
    servicetype char(10) not null ,
    clientid varchar(20) not null ,
    originalcrmaccid varchar(20),
    jobid varchar(255),
    transactiondate date not null ,
    documentno varchar(255) not null ,
    tariffcode integer not null ,
    address varchar(255),
    totalex decimal(10,2),
    loanref varchar(255),
    comment varchar(255)
  );

