drop table if exists "informix".ext_fin_hdr ;
create table "informix".ext_fin_hdr 
  (
    ext_fin_ref serial not null ,
    status_id integer not null ,
    error_message varchar(254),
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    fin_ref integer,
    bus_unit_code char(2),
    contact_code char(10),
    contact_name varchar(254),
    sp_cn_ref integer,
    parent_ref integer,
    fin_type_code char(2),
    fin_catg_code char(2),
    fin_stat_code char(2),
    fin_reas_code char(2),
    fin_num char(20),
    fin_date date,
    fin_due_date date,
    open_amount decimal(10,2),
    fin_total decimal(10,2),
    tax_amount decimal(10,2),
    fin_total_rnd decimal(12,6),
    tax_amount_rnd decimal(12,6),
    oth_ref varchar(254),
    disputed_amount decimal(10,2),
    user_field1 varchar(254),
    user_field2 varchar(254),
    user_field3 varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

