drop table if exists "informix".cost_centre ;
create table "informix".cost_centre 
  (
    cost_centreid serial not null ,
    cost_centre_code varchar(254),
    cost_centrenarr varchar(254) not null ,
    contact_code char(10) not null ,
    user_info1 varchar(254),
    user_info2 varchar(254),
    user_info3 varchar(254),
    cancel_dtm datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second,
    gl_acctcode varchar(45),
    aggregation_pt char(1) 
        default 'N' not null ,
    status_id integer,
    status_dt datetime year to second,
    allocation_flag char(1) 
        default 'D' not null ,
    email_address varchar(254,32),
    service_group_only char(1) 
        default 'N' not null ,
    efx_id varchar(30),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (allocation_flag IN ('B' ,'D' )) constraint "informix".cc_alloc_flag,
    
    check (service_group_only IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (aggregation_pt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

