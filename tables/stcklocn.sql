drop table if exists "informix".stcklocn ;
create table "informix".stcklocn 
  (
    stcklocncode char(10) not null ,
    stcklocnnarr varchar(64) not null ,
    stcklocnordr integer 
        default 0 not null ,
    stcklocnenbl char(1) 
        default 'Y' not null ,
    stcklocndflt char(1) 
        default 'N' not null ,
    stcklocntype char(1) 
        default 'N' not null ,
    stocktakes char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stcklocntype IN ('N' ,'W' ,'L' ,'R' ,'C' ,'M' ,'A' ,'O' )) constraint 
              "informix".chk_stcklocntype2,
    
    check (stocktakes IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (stcklocnenbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (stcklocndflt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

