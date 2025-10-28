drop table if exists "informix".m2_dsc_report ;
create table "informix".m2_dsc_report 
  (
    ntwtransid integer not null ,
    nt_file_num integer,
    sp_cn_ref integer,
    rec_type char(1),
    seq_num integer,
    ord_id char(9),
    ord_type char(2),
    ord_date date,
    service_num varchar(29),
    basket char(3),
    eff_date date,
    new_number varchar(29),
    reason_code char(3),
    lost_to char(3),
    rslcom_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

