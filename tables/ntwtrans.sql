drop table if exists "informix".ntwtrans ;
create table "informix".ntwtrans 
  (
    ntwtransid serial not null ,
    nt_file_num integer,
    ntwtransstatid integer,
    ntwtrantypecd char(10) not null ,
    network_id char(2) not null ,
    ntwtransflow char(1) not null ,
    service_id varchar(64),
    sp_cn_ref integer,
    selcomm_ref varchar(64),
    network_ref varchar(64),
    dest_db char(18),
    ntwtrans_dtm datetime year to second 
        default current year to second not null ,
    delim_content char(1200),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ntwtransflow IN ('I' ,'O' )) constraint "informix".input_output
  );

