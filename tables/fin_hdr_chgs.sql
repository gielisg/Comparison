drop table if exists "informix".fin_hdr_chgs ;
create table "informix".fin_hdr_chgs 
  (
    fin_hdr_chgs_ref serial not null ,
    fin_ref integer not null ,
    sp_cn_ref integer,
    tar_class_code smallint,
    chg_code char(4),
    start_date date not null ,
    end_date date not null ,
    quantity decimal(20,10) 
        default 1.0000000000 not null ,
    unitrateex decimal(18,10) not null ,
    amountex decimal(18,10) not null ,
    taxamount decimal(18,10) not null ,
    fin_gldist_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

