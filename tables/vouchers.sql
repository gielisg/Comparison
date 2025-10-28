drop table if exists "informix".vouchers ;
create table "informix".vouchers 
  (
    voucher_id serial not null ,
    type_id char(2) not null ,
    ext_voucher_num char(20),
    status_id integer not null ,
    status_dt datetime year to second 
        default current year to second not null ,
    status_by varchar(18,10) 
        default user not null ,
    reason_id integer,
    pin integer,
    exp_date date,
    voucher_value decimal(8,2) not null ,
    issued_dt datetime year to second,
    open_amount decimal(8,2) 
        default 0.00 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

