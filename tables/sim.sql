drop table if exists "informix".sim ;
create table "informix".sim 
  (
    sim_id serial not null ,
    sim_num varchar(30,20) not null ,
    puk char(8),
    imsi varchar(15),
    pin varchar(20,5),
    puk2 char(8),
    pin2 varchar(20,5),
    sim_narr varchar(32),
    service_number varchar(120),
    sim_type smallint 
        default 0 not null ,
    sim_status_id smallint 
        default 0 not null ,
    expiry_date date 
        default  '01/01/9999',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((sim_type >= 0 ) AND (sim_type <= 10 ) ) constraint "informix".zero_ten12,
    
    check ((sim_status_id >= 0 ) AND (sim_status_id <= 10 ) ) constraint "informix".zero_ten13
  );

