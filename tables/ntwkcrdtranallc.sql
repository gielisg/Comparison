drop table if exists "informix".ntwkcrdtranallc ;
create table "informix".ntwkcrdtranallc 
  (
    ntwkcrdtranallcref serial not null ,
    fromntwkcrdtranref integer not null ,
    tontwkcrdtranref integer not null ,
    ntwcrdtranallcamnt decimal(10,2) not null ,
    ntwcrdtranallcstat char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ntwcrdtranallcstat IN ('AP' ,'VD' )) constraint "informix".ntwkcrtranallcsta6
  );

