drop table if exists "informix".srvc_rechrg_type ;
create table "informix".srvc_rechrg_type 
  (
    srvctypecode char(4) not null ,
    rechrg_type_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

