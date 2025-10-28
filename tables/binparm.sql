drop table if exists "informix".binparm ;
create table "informix".binparm 
  (
    binparmid serial not null ,
    binid char(20) not null ,
    binparmflg char(18) not null ,
    binparmdesc varchar(254,32) not null ,
    binparmdflt varchar(254,32),
    binparmlock char(1) 
        default 'N' not null ,
    binparmopt char(1) 
        default 'N' not null ,
    binparmmulti char(1) 
        default 'N' not null ,
    strtypecd char(6),
    srvctypecode char(4) 
        default 'ALL',
    binparmdelete char(1) 
        default 'N' not null ,
    binparmtooltip varchar(254),
    binparmdatatype smallint,
    binparmdatasql varchar(254),
    binparmdataurl varchar(254),
    disp_order integer 
        default 3 not null ,
    claimtype varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (binparmlock IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (binparmopt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (binparmmulti IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (binparmdelete IN ('Y' ,'N' )) constraint "informix".yes_no
  );

