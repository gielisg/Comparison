drop table if exists "informix".ordrdisprespbrpt ;
create table "informix".ordrdisprespbrpt 
  (
    respbrptid serial not null ,
    respbrptcustcode varchar(10) not null ,
    respbrptfiledate char(10) not null ,
    respbrptbrptnum varchar(10) not null ,
    respbrptcustname varchar(64) not null ,
    respbrptaddr1 varchar(64) not null ,
    respbrptaddr2 varchar(64),
    respbrptaddr3 varchar(64),
    respbrptsuburb varchar(32) not null ,
    respbrptstate char(3) not null ,
    respbrptpostcode integer not null ,
    respbrptordrnum varchar(20) not null ,
    respbrptlineno integer not null ,
    respbrptmanfcode varchar(32) not null ,
    respbrptqnty integer not null ,
    respbrptroutcode varchar(10) not null ,
    respbrptconsnote varchar(12) not null ,
    respbrptctrlnum varchar(12) not null ,
    respbrptimei varchar(15),
    respbrptsim varchar(20),
    respbrptsrvcno varchar(64),
    respbrptproc char(1) 
        default 'N' not null ,
    nt_file_num integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

