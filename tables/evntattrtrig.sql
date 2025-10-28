drop table if exists "informix".evntattrtrig ;
create table "informix".evntattrtrig 
  (
    evntattrtrigid serial not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    attribid integer not null ,
    attribvalue varchar(128),
    sched_stat_code char(2),
    enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

