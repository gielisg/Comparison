drop table if exists "informix".usage_summ ;
create table "informix".usage_summ 
  (
    usage_summ_id serial not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    debtor_code char(10) not null ,
    curr_code char(3) not null ,
    bill_ref integer not null ,
    fin_ref integer not null ,
    fin_invdtl_ref integer not null ,
    sp_cn_ref integer not null ,
    sp_plan_ref integer not null ,
    srvctypecode char(4) not null ,
    pkg_code integer not null ,
    file_type_code char(10),
    tar_class_code smallint not null ,
    timebandcode char(4),
    tariff_num integer,
    unit char(1) not null ,
    no_records integer,
    min_cl_start_dt datetime year to second,
    max_cl_start_dt datetime year to second,
    unitquantity decimal(20,10),
    nt_cost_ex decimal(18,10),
    nt_cost_tax decimal(18,10),
    rtl_non_disc_ex decimal(18,10),
    rtl_non_disc_tax decimal(18,10),
    rtl_disc_ex decimal(18,10),
    rtl_disc_tax decimal(18,10),
    no_disc_records integer,
    disc_unit_qty decimal(20,10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

