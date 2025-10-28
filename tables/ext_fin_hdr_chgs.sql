drop table if exists "informix".ext_fin_hdr_chgs ;
create table "informix".ext_fin_hdr_chgs 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    ext_fin_ref integer not null ,
    tar_class_code smallint,
    chg_code char(4),
    start_date datetime year to second not null ,
    end_date datetime year to second not null ,
    quantity decimal(20,10) not null ,
    unitrateex decimal(18,10) not null ,
    amountex decimal(18,10) not null ,
    taxamount decimal(18,10),
    fin_hdr_chgs_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

