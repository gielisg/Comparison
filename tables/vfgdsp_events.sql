drop table if exists "informix".vfgdsp_events ;
create table "informix".vfgdsp_events 
  (
    vfgdsp_ev_ref serial not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    imsi varchar(15),
    dt_tim_change varchar(30),
    change_type varchar(32),
    customer_code varchar(32),
    custprofile_name varchar(32),
    tim_state char(1),
    home_country varchar(3),
    processed char(1) 
        default 'N' not null ,
    
    check (processed IN ('Y' ,'N' )) constraint "informix".yes_no
  );

