drop table if exists "informix".sp_add_info ;
create table "informix".sp_add_info 
  (
    sp_cn_ref integer not null ,
    maint_id char(10),
    sla_id char(10),
    dealer_id char(10),
    cost_centre varchar(254),
    cust_label varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

