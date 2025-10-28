drop table if exists "informix".pkg_trigger_dtl ;
create table "informix".pkg_trigger_dtl 
  (
    pkg_trig_dtl_ref serial not null ,
    pkg_trig_hdr_ref integer,
    trigger_sequence smallint,
    trigger_type char(4),
    trigger_action char(3),
    trigger_reason varchar(128),
    key_num decimal(22,6),
    key_str varchar(255),
    value_num decimal(22,6),
    value_str varchar(255),
    event_type char(2),
    event_code char(2),
    target_pkg_code integer,
    target_pkg_opt integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

