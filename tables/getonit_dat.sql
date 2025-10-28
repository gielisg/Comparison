drop table if exists "informix".getonit_dat ;
create table "informix".getonit_dat 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    username varchar(64),
    realm varchar(64),
    usagedate date,
    minimumcost decimal(10,2),
    dataallowance integer,
    dailyin decimal(12,0),
    dailyout decimal(12,0),
    localin decimal(12,0),
    localout decimal(12,0)
  );

