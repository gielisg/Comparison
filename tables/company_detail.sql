drop table if exists "informix".company_detail ;
create table "informix".company_detail 
  (
    contact_code char(10) not null ,
    bus_type_code char(1),
    acn_exempt_code char(4),
    acn char(10),
    register_dt date,
    last_updated datetime year to second 
        default current year to second not null ,
    abn varchar(20),
    updated_by varchar(18,10) 
        default user not null 
  );

