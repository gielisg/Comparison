drop table if exists "informix".rechrg ;
create table "informix".rechrg 
  (
    rechrg_id serial not null ,
    sp_cn_ref integer,
    rechrg_type_id integer not null ,
    encrypt_method integer,
    rechrg_status_id integer not null ,
    rechrg_status_dt datetime year to second,
    rechrg_status_by varchar(18,10),
    rechrg_reason_id integer,
    masked_pin varchar(32),
    pin integer,
    start_dt datetime year to second 
        default current year to second not null ,
    end_dt datetime year to second,
    exp_date date,
    shelf_exp_date date,
    issue_dt datetime year to second,
    open_amount decimal(8,2),
    bus_unit_code char(2),
    activation_dt datetime year to second,
    rechrg_price_tax decimal(16,2) 
        default 0.00 not null ,
    rechrg_price_inc decimal(16,2) 
        default 0.00 not null ,
    pre_auth_amount decimal(16,2) 
        default 0.00 not null ,
    network_id varchar(124),
    main_curr_amnt decimal(16,2) 
        default 0.00 not null ,
    auto_renew char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (auto_renew IN ('Y' ,'N' ,'F' )) constraint "informix".ynf2,
    
    check ((encrypt_method >= 0 ) AND (encrypt_method <= 1 ) ) constraint "informix".zero_one152
  );

