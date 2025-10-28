drop table if exists "informix".vocus_mob ;
create table "informix".vocus_mob 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(3),
    call_id varchar(20),
    calling_number varchar(15),
    called_number varchar(15),
    charged_party varchar(15),
    access_number varchar(15),
    financial_account varchar(11),
    provisioning_acct varchar(11),
    end_user_uid varchar(8),
    country varchar(50),
    start_datetime varchar(20),
    end_datetime varchar(20),
    call_duration varchar(11),
    call_type char(2),
    call_type_desc varchar(50),
    call_subtype_desc varchar(100),
    plan_name varchar(80),
    charge_type char(1),
    call_charge varchar(126),
    rerated varchar(10)
  );

