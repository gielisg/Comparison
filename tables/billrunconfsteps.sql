drop table if exists "informix".billrunconfsteps ;
create table "informix".billrunconfsteps 
  (
    billrunconfcode char(4) not null ,
    billrunstepseq integer not null ,
    billstepconfcode char(4),
    stepreqauth char(1) 
        default 'N' not null ,
    autoauthdlaymins integer 
        default 0 not null ,
    numauthreq integer,
    runblock char(4) 
        default 'MAIN' not null ,
    curr_code char(3),
    loglevel smallint 
        default 2 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stepreqauth IN ('Y' ,'N' ,'O' )) constraint "informix".yes_no
  );

