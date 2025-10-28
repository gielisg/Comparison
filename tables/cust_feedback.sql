drop table if exists "informix".cust_feedback ;
create table "informix".cust_feedback 
  (
    cust_feedback_id serial not null ,
    contact_code char(10) not null ,
    cust_comments text,
    srvprov_comments text,
    srvprov_resp_by varchar(18,10) 
        default user not null ,
    srvprov_resp_tm datetime year to second 
        default current year to second not null ,
    priority smallint 
        default 1 not null ,
    status smallint 
        default 0 not null ,
    cust_visible char(1) 
        default 'Y' not null ,
    tone smallint 
        default 1 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((priority >= 0 ) AND (priority <= 3 ) ),
    
    check (cust_visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check ((status >= 0 ) AND (status <= 10 ) ) constraint "informix".zero_ten22,
    
    check ((tone >= 0 ) AND (tone <= 2 ) ) constraint "informix".zero_two12
  );

