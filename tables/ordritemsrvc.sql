drop table if exists "informix".ordritemsrvc ;
create table "informix".ordritemsrvc 
  (
    ordritemid integer not null ,
    srvctypecode char(4) not null ,
    pkg_code integer,
    option smallint,
    event_type char(2),
    event_code char(2),
    ordritemsetconn char(1) not null ,
    sp_cn_ref integer,
    phone_num varchar(64),
    sp_enq_passwd varchar(32,10),
    actionid integer 
        default 1,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

