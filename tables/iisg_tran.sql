drop table if exists "informix".iisg_tran ;
create table "informix".iisg_tran 
  (
    iisg_tran_id serial not null ,
    ins_status_id integer,
    ins_reason_id integer,
    event_ref integer,
    tran_rcrd_type char(1),
    first_name char(15),
    surname char(25),
    phone_users varchar(254),
    address1 char(30),
    address2 char(30),
    address3 char(30),
    address4 char(30),
    area_code char(10),
    phone_number char(20),
    account_number char(10),
    snb char(10),
    imei char(50),
    purchase_dt datetime year to second,
    insurance_wef datetime year to second,
    insurance_wet datetime year to second,
    sim_number char(20),
    policy_number char(6),
    make varchar(32),
    model varchar(32),
    master_policy varchar(32),
    plan_type char(2),
    transmit_time datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

