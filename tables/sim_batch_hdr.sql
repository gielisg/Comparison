drop table if exists "informix".sim_batch_hdr ;
create table "informix".sim_batch_hdr 
  (
    sim_batch_id serial not null ,
    bus_unit_code char(2) not null ,
    network_id char(2) not null ,
    batch_date date 
        default today not null ,
    batch_number varchar(254,20),
    batch_status smallint 
        default 0 not null ,
    batch_type smallint 
        default 0,
    contact_code char(10),
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((batch_status >= 0 ) AND (batch_status <= 10 ) ) constraint "informix".zero_ten10,
    
    check ((batch_type >= 0 ) AND (batch_type <= 10 ) ) constraint "informix".zero_ten11
  );

