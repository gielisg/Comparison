drop table if exists "informix".billstepdetl ;
create table "informix".billstepdetl 
  (
    billstepref integer not null ,
    contact_code char(10) not null ,
    count1 integer,
    val1 decimal(22,10),
    count2 integer,
    val2 decimal(22,10),
    count3 integer,
    val3 decimal(22,10),
    count4 integer,
    val4 decimal(22,10),
    count5 integer,
    val5 decimal(22,10),
    count6 integer,
    val6 decimal(22,10),
    count7 integer,
    val7 decimal(22,10),
    valid char(1) 
        default 'Y' not null ,
    
    check (valid IN ('Y' ,'N' )) constraint "informix".yes_no
  );

