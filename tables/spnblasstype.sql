drop table if exists "informix".spnblasstype ;
create table "informix".spnblasstype 
  (
    spnblasstypeid char(2) not null ,
    spnblasstypenarr varchar(32),
    strtypecd char(6),
    srvctypecode char(4) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

