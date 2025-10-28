drop table if exists "informix".dicker_chg ;
create table "informix".dicker_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    domain_name varchar(100),
    ms_sku varchar(50),
    product_desc varchar(100),
    charge_start_date varchar(32),
    charge_end_date varchar(32),
    whsl_unit_price decimal(16),
    unit_price_rrp decimal(16),
    quantity integer,
    whsl_sub_total decimal(16),
    sub_total_rrp decimal(16),
    customer_name varchar(64),
    billing_cycle varchar(20),
    commitment_term varchar(5),
    commit_term_unit varchar(20),
    chg_start_dt datetime year to second not null ,
    chg_end_dt datetime year to second not null 
  );

