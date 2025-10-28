drop table if exists "informix".schedreq ;
create table "informix".schedreq 
  (
    schedreqid serial not null ,
    binid char(20) not null ,
    schedreqdtm datetime year to second 
        default current year to second not null ,
    schedwefr datetime year to second not null ,
    schedweto datetime year to second not null ,
    scheddymsk char(7),
    schedday integer,
    reqpriority integer 
        default 3 not null ,
    requsr varchar(18) 
        default user not null ,
    schedcomm char(64),
    output_filename varchar(64),
    contact_code char(10) not null ,
    subj_contactcode char(10),
    subj_sp_cn_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

