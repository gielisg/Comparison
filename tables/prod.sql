drop table if exists "informix".prod ;
create table "informix".prod 
  (
    prodcode varchar(194) not null ,
    prodtypecode char(4) not null ,
    prodmanfcode varchar(32),
    prodnarr varchar(128) not null ,
    prodcostex decimal(8,2),
    prodprceex decimal(8,2) not null ,
    prodprcetx decimal(8,2) not null ,
    proddsptchbl char(1) not null ,
    dispcompcode char(4),
    prodminqnty integer 
        default 1 not null ,
    prodmaxqnty integer 
        default 1 not null ,
    proddispordr integer not null ,
    prodenbl char(1) 
        default 'Y' not null ,
    prodserialisable char(1) 
        default 'N' not null ,
    autonum_code char(30),
    strtypecd char(6),
    url varchar(254),
    note varchar(254),
    manu_code char(3),
    brand_id integer,
    prod_color_id integer,
    revenue_glac varchar(45),
    cogs_glac varchar(45),
    reorder_qty integer,
    est_resupp_days integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (proddsptchbl IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (prodserialisable IN ('Y' ,'N' ,'A' )) constraint "informix".yes_no
    
    check (prodenbl IN ('Y' ,'N' ,'M' )) constraint "informix".yes_no
  );

