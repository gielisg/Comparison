drop table if exists "informix".pay_reg_request ;
create table "informix".pay_reg_request 
  (
    pay_reg_req_id serial not null ,
    pay_provider integer not null ,
    debtor_code char(10) not null ,
    external_id1 varchar(254),
    external_id2 varchar(254),
    local_id varchar(254),
    reg_request_dt datetime year to second 
        default current year to second not null ,
    reg_completed_dt datetime year to second,
    reg_status char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reg_status IN ('N' ,'P' ,'C' ,'F' ,'V' ,'R' ,'E' )) constraint "informix".chk_pay_req_st2
  );

