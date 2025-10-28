drop table if exists "informix".fin_file_fin_hdr ;
create table "informix".fin_file_fin_hdr 
  (
    file_ref integer not null ,
    fin_ref integer not null ,
    prev_fin_stat_cd char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

