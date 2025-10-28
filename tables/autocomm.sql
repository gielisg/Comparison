drop table if exists "informix".autocomm ;
create table "informix".autocomm 
  (
    autocommid serial not null ,
    dealer_id char(10) not null ,
    autocommcommtype char(4) not null ,
    invoice_grp char(2),
    autocommwefr date not null ,
    autocommweto date not null ,
    autocommlevl varchar(10) 
        default 'account' not null ,
    autocommratetype char(4) not null ,
    sp_cl_group_code char(2),
    autocommrate decimal(10,4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (autocommlevl IN ('account' ,'service' )) constraint "informix".autocommlevl2,
    
    check (autocommcommtype IN ('ALL' ,'USAG' ,'CHRG' ,'PROF' ,'GRP' ,'PLAN' )) constraint 
              "informix".commrate146,
    
    check (autocommratetype IN ('PERC' ,'FIXD' ,'GRP' )) constraint "informix".commrate246
  );

