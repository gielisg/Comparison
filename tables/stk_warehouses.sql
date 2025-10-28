drop table if exists "informix".stk_warehouses ;
create table "informix".stk_warehouses 
  (
    stk_whse_code char(3) not null ,
    stk_whse_narr varchar(32) not null ,
    address_ref integer,
    contact_code char(10),
    soh_enq char(1) 
        default 'Y' not null ,
    
    check (soh_enq IN ('Y' ,'N' )) constraint "informix".yes_no
  );

