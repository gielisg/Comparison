drop table if exists "informix".srvcntwkelems ;
create table "informix".srvcntwkelems 
  (
    element_ref integer not null ,
    sp_cn_ref integer not null ,
    element_wef datetime year to second 
        default current year to second not null ,
    element_wet datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

