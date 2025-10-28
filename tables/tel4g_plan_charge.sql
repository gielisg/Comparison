drop table if exists "informix".tel4g_plan_charge ;
create table "informix".tel4g_plan_charge 
  (
    plan_charge_ref serial not null ,
    plan_charge_desc varchar(200) not null ,
    p1_basic_call_type char(10) not null ,
    p2_calltp_calltype varchar(10) not null ,
    p2_calltp_flw_cltp char(10) not null ,
    p2_cause_forward char(10) not null ,
    p2_routnum_address varchar(20) not null ,
    p2_tariff_sn_pkey varchar(10) not null ,
    p2_tariff_zn_ws_pk varchar(20) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

