drop table if exists "informix".wtrbt_cdr ;
create table "informix".wtrbt_cdr 
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
    num_charged varchar(16) not null ,
    source_num varchar(16),
    destination_num varchar(16),
    terminated_num varchar(16),
    direction_id char(1),
    dt_start varchar(31),
    unit_type_id integer,
    units integer,
    unit_charge decimal(15,7),
    total_charge decimal(15,7),
    origin_desc varchar(120),
    destination_desc varchar(120),
    cl_desc varchar(120)
  );

