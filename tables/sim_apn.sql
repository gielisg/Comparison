drop table if exists "informix".sim_apn ;
create table "informix".sim_apn 
  (
    sim_apn_id serial not null ,
    bus_unit_code char(2) not null ,
    apn varchar(20) not null ,
    sim_apn_status smallint 
        default 0 not null ,
    note lvarchar(10000),
    private_flag char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (private_flag IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check ((sim_apn_status >= 0 ) AND (sim_apn_status <= 10 ) ) constraint "informix".zero_ten9
  );

