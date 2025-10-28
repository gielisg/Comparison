drop table if exists "informix".ord_esc_mail_cfg ;
create table "informix".ord_esc_mail_cfg 
  (
    ord_status_code char(2) not null ,
    init_hrs integer 
        default 1000 not null ,
    sub_hrs integer 
        default 1000 not null ,
    max_num integer 
        default 1000 not null ,
    email_template varchar(254)
  );

