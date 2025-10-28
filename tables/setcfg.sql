drop table if exists "informix".setcfg ;
create table "informix".setcfg 
  (
    setcfgevntid char(4) not null ,
    setcfgevntname char(32) not null ,
    setcfgdispordr integer not null ,
    setcfgloadsql varchar(255) not null ,
    setcfgcolhdr varchar(255) not null ,
    setcfgvalsql varchar(255),
    setcfgvalrslt varchar(255),
    setcfgsetsql varchar(255) not null ,
    setcfgctrl varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

