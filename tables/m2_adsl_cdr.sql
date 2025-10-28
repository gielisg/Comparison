drop table if exists "informix".m2_adsl_cdr ;
create table "informix".m2_adsl_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    username varchar(120,30),
    uploads decimal(13,2),
    downloads decimal(13,2),
    m2_file_name varchar(80),
    m2_file_date datetime year to second not null 
  );

