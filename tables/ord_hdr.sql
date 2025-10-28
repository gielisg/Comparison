drop table if exists "informix".ord_hdr ;
create table "informix".ord_hdr 
  (
    ord_id serial not null ,
    dealer_id char(5),
    bus_unit_code char(2) not null ,
    ord_num char(10) not null ,
    contact_code char(10),
    ord_date date not null ,
    salesperson char(10),
    campaign_code char(4),
    media_code char(4),
    media_ref char(10),
    cont_ord_num char(10),
    ord_status_code char(2) not null ,
    ord_status_dt datetime year to second not null ,
    ord_reas_code char(2),
    ord_priority smallint not null ,
    del_method char(1) not null ,
    courier_code char(4),
    cust_sign_flag char(1),
    voice_sign_flag char(1),
    wait_reas_code char(2),
    exp_res_date date,
    fu_date date,
    fu_reas_code char(2),
    ord_note varchar(254),
    class_id integer not null ,
    source_id integer not null ,
    acc_pay_meth_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (del_method IN ('P' ,'R' ,'C' )) constraint "informix".del_method53
  );

