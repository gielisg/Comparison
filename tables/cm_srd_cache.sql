drop table if exists "informix".cm_srd_cache ;
create table "informix".cm_srd_cache 
  (
    service_key varchar(50),
    resource_code varchar(50),
    resource_id varchar(50),
    alt_resource_id varchar(50),
    start_date varchar(30),
    end_date varchar(30),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

