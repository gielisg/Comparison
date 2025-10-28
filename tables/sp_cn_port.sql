drop table if exists "informix".sp_cn_port ;
create table "informix".sp_cn_port 
  (
    sp_cn_ref integer not null ,
    account_num char(18),
    id_type varchar(32),
    id_value varchar(254),
    lcsp varchar(50),
    lcsp_name varchar(254,30),
    portin_proc_id varchar(80),
    reason varchar(254,30),
    tech_type varchar(254,30),
    portin_status varchar(20),
    portin_dt datetime year to second,
    gcsp varchar(50),
    gcsp_name varchar(254,30),
    portout_proc_id varchar(80),
    portout_reason varchar(254),
    portout_techtype varchar(30),
    portout_status varchar(20),
    portout_dt datetime year to second,
    port_authority_dt datetime year to second,
    account_dob date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

