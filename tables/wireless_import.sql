drop table if exists "informix".wireless_import ;
create table "informix".wireless_import 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    first_name varchar(20),
    last_name varchar(30),
    organisation varchar(60),
    apartment varchar(10),
    building varchar(20),
    username varchar(32),
    plan varchar(30),
    prior_plan varchar(30),
    amount decimal(8,3),
    credit_card_type char(15),
    credit_card_no char(20),
    credit_card_exp char(4),
    card_holder_name varchar(60,30),
    start_date date,
    status_id integer,
    comment varchar(254),
    contact_code char(10),
    sp_cn_ref integer,
    pkg_code integer,
    pkg_option smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

