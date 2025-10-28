drop table if exists "informix".serv_numbers ;
create table "informix".serv_numbers 
  (
    serv_number_ref serial not null ,
    bus_unit_code char(2) not null ,
    network_id char(2) not null ,
    srvctypecode char(4) not null ,
    class_id char(1) not null ,
    serv_number varchar(64),
    reserved_dt datetime year to second,
    reserved_by char(10),
    reserved_for char(10),
    network_ref varchar(20),
    dealer_id char(10),
    quarantine_dt datetime year to second,
    num_status smallint 
        default 0 not null ,
    fee decimal(16,3) 
        default 0.000,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((num_status >= 0 ) AND (num_status <= 5 ) ) constraint "informix".zero_five12
  );

