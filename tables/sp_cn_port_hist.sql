drop table if exists "informix".sp_cn_port_hist ;
create table "informix".sp_cn_port_hist 
  (
    port_hist_ref serial not null ,
    sp_cn_ref integer not null ,
    port_type char(5),
    port_process_id varchar(80),
    port_status varchar(20),
    port_reason varchar(254),
    message_id varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

