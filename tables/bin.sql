drop table if exists "informix".bin ;
create table "informix".bin 
  (
    binid char(20) not null ,
    bincatid integer not null ,
    binfilepref char(20),
    bindesc varchar(254,32) not null ,
    binenable char(1) 
        default 'N' not null ,
    binisolate char(1) 
        default 'N' not null ,
    binoutput char(1) 
        default 'N' not null ,
    binhost char(30),
    bincmnd varchar(254,32) not null ,
    object_id integer,
    binlongdesc varchar(254),
    binsync char(1) 
        default 'N' not null ,
    schedulable char(1) 
        default 'Y' not null ,
    contact_related char(1),
    note varchar(254),
    customer_enabled char(1) 
        default 'N' not null ,
    channel_enabled char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (binenable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (binisolate IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (binoutput IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (binsync IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (contact_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (customer_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (channel_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (schedulable IN ('Y' ,'N' ,'M' )) constraint "informix".yes_no
  );

