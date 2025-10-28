drop table if exists "informix".bus_unit ;
create table "informix".bus_unit 
  (
    bus_unit_code char(2) not null ,
    bus_unit_narr varchar(32) not null ,
    dflt_warehouse char(2),
    bus_unit_default char(1) 
        default 'N' not null ,
    bus_unit_order integer 
        default 1 not null ,
    bus_unit_display char(1) 
        default 'Y' not null ,
    bus_unit_colour char(6),
    ar_control_glac varchar(45),
    tax_control_glac varchar(45),
    unearn_rev_glac varchar(45),
    suspense_glac varchar(45),
    dflt_cab_glac varchar(45),
    prepay_glac varchar(45),
    dflt_rcpt_glac varchar(45),
    comp_xfer_glac varchar(45),
    breakage_glac varchar(45),
    forex_loss_glac varchar(45),
    wip_glac varchar(45),
    writeoff_glac varchar(45),
    fin_disc_glac varchar(45),
    company_name varchar(254),
    company_abn char(11),
    company_acn char(9),
    company_address varchar(254),
    company_website varchar(254),
    company_logo byte,
    company_logo_small varchar(254),
    contact_name varchar(64),
    contact_phone varchar(64),
    contact_fax char(15),
    contact_email varchar(254),
    ntwk_crd_glac varchar(45),
    parent_bus_unit char(2),
    company_icon varchar(254),
    pdf_logo_url varchar(254),
    excel_logo_url varchar(254),
    address1 varchar(100),
    address2 varchar(100),
    suburb varchar(64),
    city varchar(64),
    state varchar(64),
    postcode varchar(10),
    country_code char(2) 
        default 'AU' not null ,
    templatebaseurl varchar(254),
    company_logo_url varchar(254),
    mfa_email char(1) 
        default 'N' not null ,
    mfa_sms char(1) 
        default 'N' not null ,
    imagefolderurl varchar(254),
    defaulttheme varchar(254),
    defaultlanguage varchar(20),
    defaulturrencycode char(3) 
        default 'AUD' not null ,
    defaultsassurl varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((bus_unit_colour IS NULL ) OR ((LENGTH (bus_unit_colour ) = 6 ) AND (bus_unit_colour 
              MATCHES '[0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F]' ) ) ) constraint 
              "informix".chk_busunitcolour4,
    
    check (mfa_email IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (mfa_sms IN ('Y' ,'N' )) constraint "informix".yes_no
  );

