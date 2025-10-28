drop table if exists "informix".bulkloadfield ;
create table "informix".bulkloadfield 
  (
    bulkloadfieldref serial not null ,
    bulkloadtypecode varchar(10) not null ,
    bulkloadfldcode varchar(32) not null ,
    bulkloadfldname varchar(64) not null ,
    bulkloadfldnarr varchar(255) not null ,
    bulkloadfldenab char(1) 
        default 'Y' not null ,
    bulkloadfldtype varchar(32) 
        default 'CHAR' not null ,
    bulkloadfldmand char(1) 
        default 'N' not null ,
    bulkloadflddflt varchar(255),
    bulkloadminlen integer,
    bulkloadmaxlen integer,
    bulkloadchecksql varchar(255),
    bulkloadtypesql varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (bulkloadfldenab IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (bulkloadfldmand IN ('Y' ,'N' )) constraint "informix".yes_no
  );

