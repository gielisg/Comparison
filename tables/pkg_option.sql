drop table if exists "informix".pkg_option ;
create table "informix".pkg_option 
  (
    pkg_code integer not null ,
    option smallint not null ,
    contract_code char(4),
    pkg_opt_narr varchar(128) not null ,
    pkg_opt_enabled char(1) 
        default 'Y' not null ,
    pkg_opt_order integer 
        default 1 not null ,
    add_info1 varchar(254),
    add_info2 varchar(254),
    add_info3 varchar(254),
    add_info4 varchar(254),
    pkg_opt_default char(1) 
        default 'N' not null ,
    min_reqd_score integer,
    contract_action char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (pkg_opt_enabled IN ('Y' ,'N' )),
    
    check (contract_action IN ('T' ,'R' ,'N' ,'C' )) constraint "informix".contract_action2,
    
    check (pkg_opt_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

