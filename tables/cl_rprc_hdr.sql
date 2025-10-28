drop table if exists "informix".cl_rprc_hdr ;
create table "informix".cl_rprc_hdr 
  (
    reproc_id serial not null ,
    reproc_type char(4),
    reproc_narr varchar(32) not null ,
    reproc_note varchar(254),
    reproc_hdr_stat char(1) 
        default 'U',
    reproc_auto char(1) 
        default 'N' not null ,
    reproc_source char(1) 
        default 'S' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reproc_source IN ('M' ,'S' )) constraint "informix".reproc_source,
    
    check (reproc_hdr_stat IN ('C' ,'U' ,'R' ,'V' ,'S' )) constraint "informix".unproc_st_run_cm14,
    
    check (reproc_auto IN ('Y' ,'N' )) constraint "informix".yes_no
  );

