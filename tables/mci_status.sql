drop table if exists "informix".mci_status ;
create table "informix".mci_status 
  (
    mci_status_code char(3) not null ,
    mci_status_narr varchar(255,1) not null 
  );

