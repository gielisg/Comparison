drop table if exists "informix".cont_commsplan ;
create table "informix".cont_commsplan 
  (
    contcmplid serial not null ,
    contact_code char(10) not null ,
    commsplanid integer not null ,
    from_date date 
        default today not null ,
    to_date date 
        default  '01/01/9999' not null ,
    isdefault char(1) 
        default 'Y' not null ,
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
    
    check (status IN (0 ,2 ,3 )) constraint "informix".status022,
    
    check (isdefault IN ('Y' ,'N' )) constraint "informix".yes_no
  );

