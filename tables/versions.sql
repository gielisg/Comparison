drop table if exists "informix".versions ;
create table "informix".versions 
  (
    version_ref serial not null ,
    application varchar(32) not null ,
    environment varchar(32) not null ,
    version_id varchar(32) not null ,
    release_date datetime year to second not null ,
    note lvarchar(31000),
    must_upgrade char(1) 
        default 'N' not null ,
    upgrade_link varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (environment IN ('Development' ,'UX' ,'SystemIntegration' ,'UserAcceptance' ,'Production' )) 
              constraint "informix".env_versions2,
    
    check (must_upgrade IN ('Y' ,'N' )) constraint "informix".yes_no
  );

