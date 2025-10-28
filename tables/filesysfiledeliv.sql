drop table if exists "informix".filesysfiledeliv ;
create table "informix".filesysfiledeliv 
  (
    filesysdelivref serial not null ,
    filesysfileref integer not null ,
    filesysbatchref integer,
    deliverycnfgref integer,
    filestatcode varchar(8),
    stat_wefr datetime year to second not null ,
    stat_weto datetime year to second,
    redelivered char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (redelivered IN ('Y' ,'N' )) constraint "informix".yes_no
  );

