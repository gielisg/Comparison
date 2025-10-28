drop table if exists "informix".packdiscdfltamnt ;
create table "informix".packdiscdfltamnt 
  (
    pd_dflt_amnt_ref serial not null ,
    packdiscid integer,
    dfltuseramnt decimal(18,6),
    wefr datetime year to second,
    weto datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

