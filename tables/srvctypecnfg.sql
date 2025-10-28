drop table if exists "informix".srvctypecnfg ;
create table "informix".srvctypecnfg 
  (
    attrname char(32) not null ,
    srvctypecode char(4) not null ,
    attrnarr varchar(254,20) not null ,
    menu_id integer,
    icon varchar(254),
    disp char(1) not null ,
    dispordr integer not null ,
    edittype integer not null ,
    attrtype integer not null ,
    attrdatatype integer not null ,
    dispbold char(1) 
        default 'N' not null ,
    dispcolour char(20),
    object_id integer,
    nav_url varchar(254),
    api_url lvarchar(500),
    group_label varchar(20),
    tooltip varchar(254),
    cont_account_type char(1),
    contact_type char(1),
    group_more_info char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (contact_type IN ('P' ,'C' ,'B' )) constraint "informix".contact_type1,
    
    check (group_more_info IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (dispbold IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cont_account_type IN ('Y' ,'N' ,'B' )) constraint "informix".ynb2,
    
    check (disp IN ('Y' ,'N' ,'P' )) constraint "informix".ynp4
  );

