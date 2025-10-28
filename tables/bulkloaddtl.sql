drop table if exists "informix".bulkloaddtl ;
create table "informix".bulkloaddtl 
  (
    bulkloaddtlref serial not null ,
    bulkloadfileref integer not null ,
    lineno integer not null ,
    linedata lvarchar(8000) not null ,
    bulkloadstatcode char(10) 
        default 'UNPROC' not null ,
    contact_code char(10),
    sp_cn_ref integer,
    event_ref integer,
    status_narr varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

