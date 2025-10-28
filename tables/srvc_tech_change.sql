drop table if exists "informix".srvc_tech_change ;
create table "informix".srvc_tech_change 
  (
    srvctech_chngref serial not null ,
    nt_file_num integer,
    nt_file_rec_num integer,
    contact_code char(10),
    phone_num varchar(64),
    conn_ref integer,
    srvctypecode char(4),
    pkg_code integer,
    pkg_option integer,
    ntwk_id varchar(64),
    trgtsrvctypecode char(4),
    trgt_pkg_code integer,
    trgt_pkg_option integer,
    trgt_ntwk_id varchar(64),
    change_ntwk_id char(1),
    error_message varchar(254),
    status_id integer,
    event_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (((nt_file_num IS NULL ) AND (nt_file_rec_num IS NULL ) ) OR ((nt_file_num 
              IS NOT NULL ) AND (nt_file_rec_num IS NOT NULL ) ) ) constraint "informix".srvctechchng_chk5,
    
    check (change_ntwk_id IN ('Y' ,'N' )) constraint "informix".yes_no
  );

