drop table if exists "informix".isp_adsl ;
create table "informix".isp_adsl 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    file_date varchar(20),
    username varchar(64) not null ,
    pk_download decimal(13,6),
    pk_upload decimal(13,6),
    offpk_download decimal(13,6),
    offpk_upload decimal(13,6)
  );

