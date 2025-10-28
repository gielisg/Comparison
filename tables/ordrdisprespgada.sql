drop table if exists "informix".ordrdisprespgada ;
create table "informix".ordrdisprespgada 
  (
    respgadaid serial not null ,
    respgadaordrnum varchar(20,10) not null ,
    respgadalineno integer not null ,
    respgadaqnty integer not null ,
    respgadapcn char(8) not null ,
    respgadaconsnote varchar(15),
    respgadadispdate char(8) not null ,
    respgadaproc char(1) 
        default 'N' not null ,
    nt_file_num integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (respgadaproc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

