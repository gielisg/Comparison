drop table if exists "informix".sss_usg_bill ;
create table "informix".sss_usg_bill 
  (
    chg_bill_ref serial not null ,
    srvctypecode char(4),
    tar_class_code smallint,
    from_date date 
        default today not null ,
    treatment char(1) 
        default 'B' not null ,
    
    check (treatment IN ('V' ,'D' ,'B' ,'N' )) constraint "informix".treatment
  );

