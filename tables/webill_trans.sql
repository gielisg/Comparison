drop table if exists "informix".webill_trans ;
create table "informix".webill_trans 
  (
    webill_ref serial not null ,
    nt_file_num integer not null ,
    status_id integer not null ,
    sp_cn_ref integer,
    rec_type char(1),
    seq_num integer,
    ord_id integer,
    ord_type integer,
    ord_date date,
    service_num char(29),
    basket integer,
    eff_date date,
    new_number char(29),
    reason_code integer,
    lost_to integer,
    rslcom_ref integer
  );

