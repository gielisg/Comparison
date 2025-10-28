drop table if exists "informix".jpo_eot ;
create table "informix".jpo_eot 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    ctl_file_name varchar(200),
    rec_content varchar(250),
    chk_flg char(1),
    chk_desc varchar(250),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

