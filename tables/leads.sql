drop table if exists "informix".leads ;
create table "informix".leads 
  (
    lead_id serial not null ,
    lead_src_code integer not null ,
    leadstatid integer not null ,
    contact_code char(10),
    lead_type char(1),
    lead_ip_address varchar(40),
    lead_title char(5),
    lead_firstname varchar(32),
    lead_name varchar(32),
    lead_company varchar(80),
    lead_department varchar(70),
    lead_job_title varchar(32),
    lead_industry varchar(32),
    lead_comp_size integer,
    lead_w_phone varchar(32),
    lead_h_phone varchar(32),
    lead_m_phone varchar(32),
    lead_fax varchar(32),
    lead_address1 varchar(32,20),
    lead_address2 varchar(32),
    lead_suburb varchar(32,20),
    lead_city varchar(20),
    lead_state char(3),
    lead_postcode varchar(10,4),
    lead_country char(2),
    lead_note varchar(255),
    lead_heard_fr varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    lead_email1 varchar(254,15),
    lead_email2 varchar(254,15),
    email_opt_out char(1) 
        default 'N',
    do_not_call char(1) 
        default 'N',
    invalid_email char(1) 
        default 'N',
    lead_assigned_to char(10),
    alloc_dealer_id char(10),
    cont_created_dt datetime year to second,
    fu_date date,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((lead_type IN ('P' ,'B' )) OR (lead_type IS NULL ) ) constraint "informix".lead_type,
    
    check (email_opt_out IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (do_not_call IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (invalid_email IN ('Y' ,'N' )) constraint "informix".yes_no
  );

