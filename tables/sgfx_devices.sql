drop table if exists "informix".sgfx_devices ;
create table "informix".sgfx_devices 
  (
    dvc_syn_excpt_id serial not null ,
    status_id integer 
        default 0 not null ,
    device_id varchar(120),
    group_id varchar(64),
    device_name varchar(64),
    version char(3),
    state char(1),
    comstate char(2),
    loc_lat varchar(64),
    loc_lng varchar(64),
    dev_typeid varchar(64),
    lqi char(2),
    activation_time datetime year to second,
    token_state char(2),
    token_messsage varchar(64),
    token_end datetime year to second,
    contract_id varchar(64),
    create_time datetime year to second,
    modem_certid varchar(64),
    prototype char(1),
    autorenew char(1),
    autorenew_stat char(1),
    activatable char(1),
    contact_code char(10),
    cost_centreid integer,
    pkg_code integer,
    pkg_option integer,
    sp_cn_ref integer,
    last_time_seen datetime year to second,
    orig_activation_tm datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

