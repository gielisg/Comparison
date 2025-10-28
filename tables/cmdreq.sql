drop table if exists "informix".cmdreq ;
create table "informix".cmdreq 
  (
    cmdreqid serial not null ,
    binid char(20) not null ,
    cmdreqdtm datetime year to second 
        default current year to second not null ,
    cmdreqsdtm datetime year to second 
        default current year to second not null ,
    cmdreqpri integer 
        default 3 not null ,
    cmdrequsr varchar(18) 
        default user not null ,
    cmdreqstat char(1) 
        default 'W' not null ,
    cmdreqstatdtm datetime year to second 
        default current year to second not null ,
    cmdreqdelete char(1) 
        default 'N' not null ,
    cmdreqcomm char(64),
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
        default user not null ,
    
    check (cmdreqstat IN ('A' ,'C' ,'R' ,'W' ,'H' )) constraint "informix".process_status92,
    
    check (cmdreqdelete IN ('Y' ,'N' )) constraint "informix".yes_no
  );

