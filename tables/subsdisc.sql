drop table if exists "informix".subsdisc ;
create table "informix".subsdisc 
  (
    subsdiscid serial not null ,
    sp_plan_ref integer not null ,
    discid integer not null ,
    subsdiscwefr datetime year to second not null ,
    subsdiscweto datetime year to second not null ,
    subsdiscprevweto datetime year to second,
    subsdiscauto char(1) 
        default 'Y' not null ,
    subsdiscaggrid int8,
    prntsubsdiscid integer 
        default null,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

