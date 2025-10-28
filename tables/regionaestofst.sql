drop table if exists "informix".regionaestofst ;
create table "informix".regionaestofst 
  (
    regioncd char(3) not null ,
    aest_wef datetime year to second not null ,
    aest_wet datetime year to second not null ,
    aestofst integer 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

