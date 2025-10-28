drop table if exists "informix".sp_cn_commsplan ;
create table "informix".sp_cn_commsplan 
  (
    spcncmplid serial not null ,
    sp_cn_ref integer not null ,
    commsplanid integer not null ,
    from_date date 
        default today not null ,
    to_date date 
        default  '01/01/9999' not null ,
    status integer,
    note lvarchar(20000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN (0 ,2 ,3 )) constraint "informix".status02
  );

