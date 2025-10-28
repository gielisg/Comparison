drop table if exists "informix".commappl ;
create table "informix".commappl 
  (
    commapplid serial not null ,
    dealer_id char(10) not null ,
    commapplcalcamnt decimal(14,6) not null ,
    commapplstat char(4) not null ,
    fin_src_code char(2) not null ,
    commrateid integer,
    prntcommrateid integer,
    fin_ref integer not null ,
    commpaidid integer,
    commapplbsisamnt decimal(14,6) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

