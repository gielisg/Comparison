drop table if exists "informix".pkg_trigger_hdr ;
create table "informix".pkg_trigger_hdr 
  (
    pkg_trig_hdr_ref serial not null ,
    pkg_code integer,
    option integer,
    untriggered_srvc char(1) 
        default 'Y' not null ,
    trigger_wefr date 
        default today not null ,
    trigger_weto date 
        default  '01/01/9999' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (untriggered_srvc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

