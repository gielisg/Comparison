drop table if exists "informix".fin_hdr_stat_hist ;
create table "informix".fin_hdr_stat_hist 
  (
    ser serial not null ,
    fin_ref integer,
    bus_unit_code char(2),
    contact_code char(10),
    fin_date date,
    fin_total decimal(10,2),
    fin_stat_code_old char(2),
    fin_stat_code_new char(2),
    fin_type_code char(2),
    fin_num varchar(20),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

