drop table if exists "informix".pay_type ;
create table "informix".pay_type 
  (
    pay_code char(2) not null ,
    pay_code_type char(1) not null ,
    pay_narr char(32) not null ,
    protectable char(1) 
        default 'N' not null ,
    exportable char(1) 
        default 'N' not null ,
    mask char(1) 
        default 'Y' not null ,
    gl_acctcode varchar(45),
    surchg_rev_glac varchar(45),
    bank_acct_id integer,
    cc_map varchar(15),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (mask IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (protectable IN ('Y' ,'N' ,'M' ,'D' )) constraint "informix".yes_no
    
    check (exportable IN ('Y' ,'N' ,'M' ,'D' )) constraint "informix".yes_no
  );

