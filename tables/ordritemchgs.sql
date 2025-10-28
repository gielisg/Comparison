drop table if exists "informix".ordritemchgs ;
create table "informix".ordritemchgs 
  (
    chg_code char(4) not null ,
    ordritemid integer not null ,
    ordritemcost decimal(18,10),
    ordritemprice decimal(18,10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

