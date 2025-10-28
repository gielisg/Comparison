drop table if exists "informix".wtrbt_chg ;
create table "informix".wtrbt_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rated_id integer not null ,
    carrier_id integer,
    service_type_id integer,
    serv_carrier_id integer,
    tariff_id integer not null ,
    tariff_group_id integer,
    tax_id integer,
    plan_sale_key varchar(38),
    usage_rule_key varchar(120),
    reference_key varchar(120),
    charge_key varchar(128) not null ,
    dt_start datetime year to second,
    dt_stop datetime year to second,
    unit_type_id integer,
    units integer,
    unit_charge decimal(15,7),
    total_charge decimal(15,7),
    charge_desc varchar(120)
  );

