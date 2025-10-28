drop table if exists "informix".stck ;
create table "informix".stck 
  (
    stck_id serial not null ,
    stckcode varchar(20),
    dispcompcode char(4),
    stckmanfcode varchar(32,10) not null ,
    prodcode varchar(194) not null ,
    stckused char(1) 
        default 'N' not null ,
    availqnty integer 
        default 1 not null ,
    insetqnty integer 
        default 0 not null ,
    stckstat char(4) 
        default 'AVAL' not null ,
    prnt_stck_id integer,
    prntstckcode varchar(20),
    stcklocncode char(10) not null ,
    ntwkident varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stckstat IN ('AVAL' ,'DISP' ,'SET' )) constraint "informix".stckstat2,
    
    check (stckused IN ('Y' ,'N' )) constraint "informix".yes_no
  );

