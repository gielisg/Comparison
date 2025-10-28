drop table if exists "informix".rechrg_inst_elem ;
create table "informix".rechrg_inst_elem 
  (
    rechrg_id integer not null ,
    element_id integer not null ,
    start_dt datetime year to second 
        default current year to second not null ,
    end_dt datetime year to second,
    expiry_date date,
    orig_value decimal(16,2) 
        default 0.00,
    open_value decimal(16,2) 
        default 0.00,
    pre_auth_amount decimal(16,3) 
        default 0.000 not null ,
    ext_network_id varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (orig_value >= 0. ) constraint "informix".greater_eq535,
    
    check (open_value >= 0. ) constraint "informix".greater_eq536
  );

