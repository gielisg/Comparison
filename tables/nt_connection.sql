drop table if exists "informix".nt_connection ;
create table "informix".nt_connection 
  (
    nt_cn_ref serial not null ,
    phone_num varchar(64) not null ,
    nt_connected datetime year to second not null ,
    nt_disconnected datetime year to second not null ,
    enq_password char(32) not null ,
    mailbox_num char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

