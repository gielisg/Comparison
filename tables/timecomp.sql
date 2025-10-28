drop table if exists "informix".timecomp ;
create table "informix".timecomp 
  (
    timecomp_ref char(10) not null ,
    timecomp_wefd datetime year to second not null ,
    timecomp_wetd datetime year to second,
    timecomp_ofst integer not null ,
    timecomp_utcofst integer 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

