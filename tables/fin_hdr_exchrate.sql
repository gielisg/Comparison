drop table if exists "informix".fin_hdr_exchrate ;
create table "informix".fin_hdr_exchrate 
  (
    fin_ref integer not null ,
    exchraterateid integer not null ,
    sourceamount decimal(10,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

