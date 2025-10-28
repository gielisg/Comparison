drop table if exists "informix".ordritemchgrec ;
create table "informix".ordritemchgrec 
  (
    ordr_rec_ref serial not null ,
    ordritemid integer,
    nt_fl_dtl_ref integer not null ,
    reconciled char(1) not null ,
    ordrid integer not null ,
    rec_wefr datetime year to second not null ,
    rec_weto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reconciled IN ('A' ,'M' ,'D' ,'R' )) constraint "informix".amdr3
  );

