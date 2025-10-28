drop table if exists "informix".roam_partners ;
create table "informix".roam_partners 
  (
    contact_code char(10) not null ,
    roam_wef datetime year to second not null ,
    srvctypecode char(4) not null ,
    roam_wet datetime year to second not null ,
    sending_plmn char(5),
    network_code char(5),
    roaming_type char(1) not null ,
    imsimcc integer,
    imsimnc integer,
    imsi_prfx char(30),
    old_pkg varchar(32,10) not null ,
    option smallint,
    spec_vers_num char(2) not null ,
    tapout_seqno integer,
    tax_treatment char(1) not null ,
    utc_oride char(1) not null ,
    tax_oride char(1) not null ,
    exrate_oride char(1) not null ,
    test_format char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (test_format IN ('Y' ,'N' )) constraint "informix".yes_no
  );

