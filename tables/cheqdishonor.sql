drop table if exists "informix".cheqdishonor ;
create table "informix".cheqdishonor 
  (
    cheqdis_id serial not null ,
    cheqdis_hdrid integer,
    status_id integer,
    comments varchar(254),
    svc_prov_bsb char(7),
    svc_prov_acc char(20),
    creation_date date,
    add_info1 varchar(20),
    deposit_date date,
    drawer_cheque_no varchar(30,15),
    drawer_bsb char(7),
    drawer_acc char(20),
    serial_no char(10),
    bank_name varchar(30,10),
    drawer_name char(30),
    answer_code char(5),
    dpst_serial_no varchar(20,10),
    dpst_acc varchar(20,10),
    dpst_total decimal(16,3),
    cheque_to_hand char(1),
    cheque_amount decimal(16,3),
    fee_amount decimal(16,3),
    add_info2 varchar(40),
    fin_ref integer,
    bank_acct_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cheque_to_hand IN ('Y' ,'N' )) constraint "informix".yes_no
  );

