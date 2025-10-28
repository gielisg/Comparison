drop table if exists "informix".aspnetuser ;
create table "informix".aspnetuser 
  (
    id serial not null ,
    username varchar(254),
    normalizedusername varchar(254),
    email varchar(254),
    normalizedemail varchar(254),
    emailconfirmed "informix".boolean not null ,
    passwordhash lvarchar,
    securitystamp lvarchar,
    concurrencystamp lvarchar,
    phonenumber varchar(254),
    phonenumconfirmed "informix".boolean not null ,
    twofactorenabled "informix".boolean not null ,
    utclockoutend datetime year to second,
    lockoutenabled "informix".boolean not null ,
    accessfailedcount integer,
    contact_code char(10),
    category char(20) 
        default 'Customer' not null ,
    changeonnext "informix".boolean 
        default 'f' not null ,
    expirydatetime datetime year to second,
    expirywarningdt datetime year to second,
    blkexcessfailedatp "informix".boolean 
        default 'f' not null ,
    passw_last_changed datetime year to second,
    nexphnumcnfattempt datetime year to second,
    nexemailcnfattempt datetime year to second,
    numphnumcnfattempt integer 
        default 0 not null ,
    numemailcnfattempt integer 
        default 0 not null ,
    mfa_request_dt datetime year to second,
    
    check (category IN ('System' ,'Administrator' ,'ServiceProvider' ,'Customer' ,'CustomerRelated' ,'Partner' ,'PartnerRelated' )) 
              constraint "informix".chk_category11
  );

