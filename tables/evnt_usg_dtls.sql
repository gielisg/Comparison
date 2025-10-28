drop table if exists "informix".evnt_usg_dtls ;
create table "informix".evnt_usg_dtls 
  (
    event_ref integer not null ,
    usage_type char(1) 
        default 'D' not null ,
    total_allowance decimal(22,6),
    unit char(2),
    total_units_used decimal(22,6),
    total_perc_used decimal(10,2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (usage_type IN ('V' ,'D' ,'T' )) constraint "informix".usage_type
  );

