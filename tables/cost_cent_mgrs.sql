drop table if exists "informix".cost_cent_mgrs ;
create table "informix".cost_cent_mgrs 
  (
    cost_cent_mgr_id serial not null ,
    cost_centreid integer not null ,
    contact_code char(10) not null ,
    perm_level varchar(20) 
        default 'Administrator' not null ,
    start_date date not null ,
    end_date date,
    comments lvarchar(1024),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (perm_level IN ('Administrator' ,'ReadOnly' )) constraint "informix".perm_level
  );

