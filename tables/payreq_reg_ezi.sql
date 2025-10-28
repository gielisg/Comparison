drop table if exists "informix".payreq_reg_ezi ;
create table "informix".payreq_reg_ezi 
  (
    pay_req_ezi_id serial not null ,
    pay_request_id integer not null ,
    digital_key varchar(40) not null ,
    ezi_customerid varchar(20) not null ,
    system_reference varchar(30),
    debit_date char(10),
    pay_amount_cents integer 
        default 0 not null ,
    payamt_cent_flag char(1) 
        default 'Y' not null ,
    payment_ref varchar(30) not null ,
    user_name varchar(18,10),
    status_id integer 
        default 1 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (payamt_cent_flag IN ('Y' ,'N' )) constraint "informix".yes_no
  );

