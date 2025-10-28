drop table if exists "informix".cont_passwds ;
create table "informix".cont_passwds 
  (
    contact_code char(10) not null ,
    seqno integer not null ,
    login_code varchar(254,10) not null ,
    passwd varchar(254,80) not null ,
    login_type char(1) 
        default 'A' not null ,
    encrypt_method integer 
        default 0 not null ,
    cont_pwd_wefr datetime year to second,
    cont_pwd_weto datetime year to second,
    cancelled char(1) 
        default 'N' not null ,
    blocked char(1) 
        default 'N' not null ,
    must_change char(1) 
        default 'N' not null ,
    expiry_dt datetime year to second,
    reset_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (login_type IN ('A' ,'C' ,'E' ,'P' ,'V' )) constraint "informix".acepv2,
    
    check (cancelled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (must_change IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (blocked IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check ((encrypt_method >= 0 ) AND (encrypt_method <= 1 ) ) constraint "informix".zero_one14
  );

