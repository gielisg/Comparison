drop table if exists "informix".vouch_type_srvc ;
create table "informix".vouch_type_srvc 
  (
    type_id char(2) not null ,
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

