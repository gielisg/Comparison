drop table if exists "informix".login_history ;
create table "informix".login_history 
  (
    login_history_id serial not null ,
    login_code varchar(254,20) not null ,
    status varchar(32) 
        default 'Approved' not null ,
    contact_code char(10),
    passwd varchar(254),
    ip char(20),
    location varchar(254),
    is_tor char(1) 
        default 'N' not null ,
    is_proxy char(1) 
        default 'N' not null ,
    is_anonymous char(1) 
        default 'N' not null ,
    is_known_attacker char(1) 
        default 'N' not null ,
    is_known_abuser char(1) 
        default 'N' not null ,
    is_threat char(1) 
        default 'N' not null ,
    is_bogon char(1) 
        default 'N' not null ,
    is_2fa char(1) 
        default 'N' not null ,
    is_otp char(1) 
        default 'N' not null ,
    user_ntf_oline_dt datetime year to second,
    client_ntf_sent_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('Approved' ,'Failed' ,'Suspended' ,'Suspect' )) constraint 
              "informix".status_loginhis2,
    
    check (is_tor IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_proxy IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_anonymous IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_known_attacker IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_known_abuser IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_threat IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_bogon IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_2fa IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (is_otp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

