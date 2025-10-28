drop table if exists "informix".serv_bulk_act_hdr ;
create table "informix".serv_bulk_act_hdr 
  (
    sbproc_id serial not null ,
    sbproc_type char(4),
    sbproc_narr varchar(32) not null ,
    sbproc_note varchar(254),
    sbproc_hdr_stat char(1) 
        default 'U',
    sbproc_auto char(1) 
        default 'N' not null ,
    sbproc_source char(1) 
        default 'S' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sbproc_source IN ('M' ,'S' )) constraint "informix".reproc_source7,
    
    check (sbproc_hdr_stat IN ('C' ,'U' ,'R' ,'V' ,'S' )) constraint "informix".unproc_st_run_cm25,
    
    check (sbproc_auto IN ('Y' ,'N' )) constraint "informix".yes_no
  );

