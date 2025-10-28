drop table if exists "informix".wta_srvctype ;
create table "informix".wta_srvctype 
  (
    wta_ref integer not null ,
    srvctypecode char(4) not null ,
    wta_srvctype_wef datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    wta_srvctype_wet datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

