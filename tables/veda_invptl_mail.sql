drop table if exists "informix".veda_invptl_mail ;
create table "informix".veda_invptl_mail 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    status_id integer 
        default 0 not null ,
    status_narr varchar(255) 
        default 'Unprocessed' not null ,
    gv_tracking_id integer not null ,
    gv_document_no integer not null ,
    consolidated_eml char(1) not null ,
    account_no char(10) not null ,
    invoice_date datetime year to second not null ,
    veda_invoice_no varchar(20) not null ,
    sent_dt datetime year to second not null ,
    email_address varchar(255) not null ,
    recipient_name varchar(255) not null ,
    latest_stat varchar(50) not null ,
    latest_stat_reas varchar(50),
    latest_stat_dt datetime year to second not null ,
    latest_stat_code varchar(20) not null ,
    gv_instance char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

