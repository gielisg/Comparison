drop table if exists "informix".pay_response ;
create table "informix".pay_response 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    debtor_code char(10),
    fin_ref integer,
    card_no varchar(20,10) not null ,
    exp_date varchar(10),
    value decimal(10,2),
    reason varchar(254),
    declined char(1),
    err_status char(1) 
        default 'N' not null ,
    err_msg varchar(255),
    status_id integer,
    comments varchar(254),
    reference varchar(60,20),
    bsb char(7),
    account_name varchar(32),
    bankdpstid integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

