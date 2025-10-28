drop table if exists "informix".portal_types ;
create table "informix".portal_types 
  (
    portal_type_id integer not null ,
    portal_type_narr varchar(32,1) not null ,
    dflt_menu_id integer 
        default 100000 not null ,
    dflt_timeout smallint 
        default 1200 not null ,
    account_based char(1) 
        default 'Y' not null ,
    bus_unit_based char(1) 
        default 'N' not null ,
    entry_url varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (account_based IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (bus_unit_based IN ('Y' ,'N' )) constraint "informix".yes_no
  );

