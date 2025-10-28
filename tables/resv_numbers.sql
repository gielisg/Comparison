drop table if exists "informix".resv_numbers ;
create table "informix".resv_numbers 
  (
    resv_number_id serial not null ,
    resv_num_typ_id char(2) not null ,
    network_token char(20) not null ,
    service_num char(20) not null ,
    reserved_by char(20) not null ,
    request_id integer not null ,
    request_dt datetime year to second not null ,
    reserved_dt datetime year to second,
    resv_exp_dt datetime year to second,
    activation_dt datetime year to second,
    cancelled_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

