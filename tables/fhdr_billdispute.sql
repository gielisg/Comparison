drop table if exists "informix".fhdr_billdispute ;
create table "informix".fhdr_billdispute 
  (
    dispute_ref integer not null ,
    fin_ref integer not null ,
    reln_type char(1) not null ,
    
    check (reln_type IN ('C' ,'R' )) constraint "informix".reln_type2
  );

